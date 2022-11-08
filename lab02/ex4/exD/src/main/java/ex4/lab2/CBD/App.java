package ex4.lab2.CBD;

import com.mongodb.client.*;
import com.mongodb.client.model.Accumulators;
import static com.mongodb.client.model.Aggregates.group;
import org.bson.Document;

import static com.mongodb.client.model.Filters.*;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class App 
{

    static MongoCollection<Document> collection;

    public App() {
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase("cbd");
        this.collection = database.getCollection("restaurants");
    }


    public int countLocalidades(){
        MongoCursor<String> cursor = collection.distinct("localidade", String.class).iterator();
        int count = 0;
        while(cursor.hasNext()){
            cursor.next();
            count++;
        }
        return count;
    }

    Map<String, Integer> countRestByLocalidade(MongoCollection<Document> collection){
        Map<String, Integer> result = new HashMap<>();
        try {
            AggregateIterable<Document> docs = collection.aggregate(Arrays.asList(group("$localidade", Accumulators.sum("sum", 1))));

            for (Document d : docs) {
                result.put(d.get("_id").toString(), (int) (d.get("sum")));
            }

        } catch (Exception e) {
            System.err.println("Error getting countRestByLocalidade in MongoDB collection: " + e);
        }

        return result;
    }


    public static List<String> getRestWithNameCloserTo(String s){
    
        List<String> result = new ArrayList<String>();

        try {
            FindIterable<Document> docs = collection.find(regex("nome", String.format("(%s)", s)));
            
            for (Document doc : docs) {
                result.add((String) doc.get("nome"));
            }

        }catch (Exception e){
            System.err.println("Error getting getRestWithNameCloserTo in MongoDB collection: " + e);
        }

        return result;

    }

    public static void main( String[] args )
    {


        App app = new App();
        System.out.println("Número de localidades distintas: " + app.countLocalidades());
        System.out.println("\n");


        System.out.println("Número de restaurantes por localidade:" );
        Map<String, Integer> result = app.countRestByLocalidade(app.collection);
        for (Map.Entry<String, Integer> entry : result.entrySet()) {
            System.out.println(" -> "+ entry.getKey() + " - " + entry.getValue());
        }
        System.out.println("\n");


        System.out.println("Restaurantes com nome semelhante a 'Park': " );
        List<String> result2 = getRestWithNameCloserTo("Park");
        for (String s : result2) {
            System.out.println(" -> "+ s);
        }

        try {
            FileWriter fileWriter = new FileWriter("CBD_L204_103925.txt");

            fileWriter.write("Número de localidades distintas: " + app.countLocalidades() + "\n\n\n");
            fileWriter.write("Número de restaurantes por localidade:" + "\n\n");
            for (Map.Entry<String, Integer> entry : result.entrySet()) {
                fileWriter.write(" -> "+ entry.getKey() + " - " + entry.getValue() + "\n");
            }
            fileWriter.write("\n\nRestaurantes com nome semelhante a 'Park': " + "\n");
            for (String s : result2) {
                fileWriter.write(" -> "+ s + "\n");
            }

            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        

    }
}
