import time
from neo4j import GraphDatabase



# Create the nodes and relationships
def load_csv(driver):
    driver.session().run(
        """
        LOAD CSV WITH HEADERS FROM 'file:///dataset.csv' AS row
        MERGE (p:Property {id: toInteger(row.id), name: row.name, price: toInteger(row.price), last_review: date(row.last_review)})
        MERGE (h:Host {id: toInteger(row.host_id), name: row.host_name})
        MERGE (ng:NEIGHBOURHOOD_GROUP {name: row.neighbourhood_group})
        MERGE (n:NEIGHBOURHOOD {name: row.neighbourhood})
        MERGE (t:ROOM_TYPE {name: row.room_type})
        MERGE (p)-[:OWNED_BY]->(h)
        MERGE (p)-[:BELONGS_TO]->(ng)
        MERGE (p)-[:LOCATED_IN]->(n)
        MERGE (p)-[:HAS_ROOM_TYPE]->(t)
        """
        )



# Execute the queries and write the results to a file
def write_query(driver, query, f):
    result = driver.session().run(query)
    for i in result:
        f.write(str(i.data())+"\n")
    f.write("\n")


def queries():
    with open ("CBD_L44c_output.txt", "w") as f:

        f.write("1. Find all properties with a price higher than 1000\n")

        query = "MATCH (p:Property) WHERE p.price > 1000 RETURN p"
        write_query(driver, query, f)


        f.write("2. Find the 10 properties with a room type of 'Entire home/apt' with the highest price\n")

        query = "MATCH (p:Property)-[:HAS_ROOM_TYPE]->(t:ROOM_TYPE) WHERE t.name = 'Entire home/apt' RETURN p ORDER BY p.price DESC LIMIT 10"
        write_query(driver, query, f)


        f.write("3. List the total number of properties for each neighbourhood group\n")

        query = "MATCH (p:Property)-[:BELONGS_TO]->(ng:NEIGHBOURHOOD_GROUP) RETURN ng.name AS Neighbourhood_Group, COUNT(p) AS Total_Properties"
        write_query(driver, query, f)


        f.write("4. List all hosts and the properties they have\n") # this one will be limited to 20 just to make it easier to read

        #query = "MATCH (p:Property)-[:OWNED_BY]->(h:Host) RETURN h.name, p.name AS property order by h.name"
        query = "MATCH (p:Property)-[:OWNED_BY]->(h:Host) RETURN h.name, p.name AS property order by h.name limit 20" # limited to 20 (the actual output is the one above)
        write_query(driver, query, f)


        f.write("5. List all hosts who have more than 4 properties\n")

        query = "MATCH (p:Property)-[o:OWNED_BY]->(h:Host) WITH h, count(o) AS num_properties where num_properties > 4 RETURN h.name, num_properties order by h.name"
        write_query(driver, query, f)


        f.write("6. List the 10 hosts with the most properties with a cost higher than 100\n")

        query = "MATCH (p:Property)-[o:OWNED_BY]->(h:Host) WHERE p.price > 100 WITH h, count(o) AS num_properties order by num_properties DESC limit 10 RETURN h.name, num_properties "
        write_query(driver, query, f)



        f.write("7. List all properties of the host with the name 'Lisa'\n")

        query = "MATCH (h:Host {name: 'Lisa'})<-[:OWNED_BY]-(p:Property) RETURN h.name, p.name"
        write_query(driver, query, f)


        f.write("8. List all properties in a neighbourhood starting with 'B'\n")

        query = "MATCH (n:NEIGHBOURHOOD)<-[:LOCATED_IN]-(p:Property) WHERE n.name STARTS WITH 'B' RETURN p.name"
        write_query(driver, query, f)


        f.write("9. List the 5 hosts with the top total prices of their properties\n")

        query = "MATCH (h:Host)<-[:OWNED_BY]-(p:Property) RETURN h.name, sum(p.price) AS total_price ORDER BY total_price DESC LIMIT 5"
        write_query(driver, query, f)


        f.write("10. List the property with the highest price out of the 10 properties with the oldest last review\n")
        
        query = "MATCH (p:Property) WITH p, p.last_review AS review ORDER BY review ASC LIMIT 10 RETURN p.name AS Property, p.last_review as last_review, p.price AS Price ORDER BY Price DESC LIMIT 1"
        write_query(driver, query, f)

        f.write("(the 10 oldest reviews)\n")
        query = "MATCH (p:Property) WITH p, p.last_review AS review ORDER BY review ASC LIMIT 10 RETURN p.name AS Property, p.last_review as last_review, p.price"
        write_query(driver, query, f)



if __name__ == "__main__":

    uri = "neo4j://localhost:7687"
    driver = GraphDatabase.driver(uri, auth=("neo4j", "lab44"))

    load_csv(driver)
    time.sleep(1) # assures that the data is loaded before the queries are executed

    queries()

    driver.close()
