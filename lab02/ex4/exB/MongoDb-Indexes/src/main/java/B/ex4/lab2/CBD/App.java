package B.ex4.lab2.CBD;

import com.mongodb.client.*;
import com.mongodb.client.model.Indexes;

import org.bson.Document;

import static com.mongodb.client.model.Filters.*;


 
public class App 
{
    static void listALl(MongoCollection<Document> collection){
        FindIterable<Document> insertedDocs = collection.find();
        for (Object doc : insertedDocs) { 
            System.out.println(doc);
        }
    }

    public static void main( String[] args )
    {
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = database.getCollection("restaurants");


        listALl(collection);

        collection.createIndex(Indexes.ascending("localidade"));
        collection.createIndex(Indexes.ascending("gastronomia"));
        collection.createIndex(Indexes.text("nome"));

        FindIterable<Document> insertedDocs = collection.find(eq("localidade", "aveiro"));
        for (Document doc : insertedDocs) {
            System.out.println(doc.toJson());
        }

    }
}
