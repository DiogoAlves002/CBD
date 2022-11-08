package ex4.lab2.CBD;

import com.mongodb.client.*;
import com.mongodb.client.model.Indexes;
import com.mongodb.client.model.Updates;

import java.util.Arrays;

import org.bson.Document;
import org.bson.conversions.Bson;

import static com.mongodb.client.model.Filters.*;

public class App 
{
    

    public static void main( String[] args )
    {
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = database.getCollection("restaurants");



        // 3. Apresente os campos restaurant_id, nome, localidade e código postal (zipcode), mas exclua o campo _id de todos os documentos da coleção
        FindIterable<Document> docs3 = collection.find()
        .projection(new Document("nome", 1)
            .append("restaurant_id", 1)
            .append("localidade", 1)
            .append("address.zipcode", 1)
            .append("_id", 0));
                

        System.out.println("3. Apresente os campos restaurant_id, nome, localidade e código postal (zipcode), mas exclua o campo _id de todos os documentos da coleção");
        for (Object doc : docs3) { 
            System.out.println(doc);
        }



        // 4. Indique o total de restaurantes localizados no Bronx.
        long count = collection.countDocuments(eq("localidade", "Bronx"));
        System.out.println("4. Total de restaurantes localizados no Bronx: " + count);


        
        // 7. Encontre os restaurantes que obtiveram uma ou mais pontuações (score) entre [80 e 100].
        FindIterable<Document> docs7 = collection.find(
            elemMatch("grades", and(gte("score", 80), lte("score", 100)))
        );
        System.out.println("7. Encontre os restaurantes que obtiveram uma ou mais pontuações (score) entre [80 e 100]");
        for (Object doc : docs7) { 
            System.out.println(doc);
        }




        // 9. Indique os restaurantes que não têm gastronomia "American", tiveram uma (ou mais) pontuação superior a 70 e estão numa latitude inferior a -65.
        FindIterable<Document> docs9 = collection.find(and(
            ne("gastronomia", "American"),
            elemMatch("grades", gte("score", 70)),
            lt("address.coord.0", -65)

        ));
        System.out.println("9. Restaurantes que não têm gastronomia 'American', tiveram uma (ou mais) pontuação superior a 70 e estão numa latitude inferior a -65:" );
        for (Object doc : docs9) { 
            System.out.println(doc);
        }



        // 10. Liste o restaurant_id, o nome, a localidade e gastronomia dos restaurantes cujo nome começam por "Wil".
        FindIterable<Document> docs10 = collection.find(regex("nome", "(?i)Wil")).projection(
            (new Document("restaurant_id", 1)).append("nome", 1).append("localidade", 1).append("gastronomia", 1)
        );
        System.out.println("10. restaurant_id, o nome, a localidade e gastronomia dos restaurantes cujo nome começam por 'Wil':" );
        for (Object doc : docs10) { 
            System.out.println(doc);
        }
        

    }
}
