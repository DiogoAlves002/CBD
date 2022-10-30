package ex4.lab2.CBD;


import com.mongodb.client.*;

import java.util.Arrays;

import org.bson.Document;


public class App 
{
    public static void main( String[] args )
    {
        
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = database.getCollection("restaurants");

        // pesquisar (todos os elementos)
        FindIterable<Document> docs = collection.find();
        for (Object doc : docs) { 
            System.out.println(doc);
        }


        // insert
        Document address = new Document("building", "1").append("coord", Arrays.asList(1, 2)).append("rua", "r_1").append("zipcode", "111222");
        Document date = new Document("date", "2022-10-30T00:00:00Z").append("grade", "A").append("score", "1");
        Document grades = new Document("grades", Arrays.asList(date));

        Document document = new Document("address", address).append("localidade", "aveiro").append("gastronomia", "portuguesa").append("grades", grades).append("nome", "rest").append("restaurante_id", "001");

        collection.insertOne(document);

        FindIterable<Document> newDocs = collection.find();
        for (Object doc : newDocs) { 
            System.out.println(doc);
        }


        mongoClient.close();
    }
}
