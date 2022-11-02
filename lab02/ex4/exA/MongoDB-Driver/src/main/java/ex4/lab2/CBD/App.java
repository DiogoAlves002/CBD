package ex4.lab2.CBD;


import com.mongodb.client.*;
import com.mongodb.client.model.Updates;

import java.util.Arrays;

import org.bson.Document;
import org.bson.conversions.Bson;



public class App 
{

    static void listALl(MongoCollection<Document> collection){
        FindIterable<Document> insertedDocs = collection.find();
        for (Object doc : insertedDocs) { 
            System.out.println(doc);
        }
    }

    static void insert(MongoCollection<Document> collection){
        Document address = new Document("building", "1").append("coord", Arrays.asList(1, 2)).append("rua", "r_1").append("zipcode", "111222");
        Document date = new Document("date", "2022-10-30T00:00:00Z").append("grade", "A").append("score", "1");
        Document grades = new Document("grades", Arrays.asList(date));

        Document document = new Document("address", address).append("localidade", "aveiro").append("gastronomia", "portuguesa").append("grades", grades).append("nome", "rest").append("restaurante_id", "001");

        collection.insertOne(document);
    }

    static void edit(MongoCollection<Document> collection){
        Document query = new Document().append("restaurante_id",  "001");
        Bson update= Updates.combine(Updates.set("address.building", "2"));
        collection.updateOne(query, update);

    }

    public static void main( String[] args ) throws InterruptedException
    {
        
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = database.getCollection("restaurants");


        listALl(collection);

        insert(collection);
        
        edit(collection);

        mongoClient.close();
    }
}
