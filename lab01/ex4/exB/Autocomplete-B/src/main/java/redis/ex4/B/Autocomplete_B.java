package redis.ex4.B;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.zip.Inflater;

import org.apache.commons.lang3.SystemUtils;

import com.opencsv.*;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.params.ZRangeParams;

public class Autocomplete_B 
{
    public static void main( String[] args ) throws IOException
    {
        Jedis jedis = new Jedis();
        jedis.del("name_value");
        File names= new File("src/main/resources/nomes-pt-2021.csv");

        try {
  
            // Create an object of filereader
            // class with CSV file as a parameter.
            FileReader filereader = new FileReader(names);
      
            // create csvReader object passing
            // file reader as a parameter
            CSVReader csvReader = new CSVReader(filereader);
            String[] nextRecord;
      
            // we are going to read data line by line
            while ((nextRecord = csvReader.readNext()) != null) { 
                for (String name_value : nextRecord) {
                    jedis.zadd("name_value", 1, name_value.toLowerCase()); // storing all as  names as "name;value"
                }
            } csvReader.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }



        File outFile = new File("CBD-14b-out.txt");
        FileWriter myWriter = new FileWriter("CBD-14b-out.txt");
        while (true){
            Scanner myObj = new Scanner(System.in);
            System.out.println("Search for ('Enter' for quit): ");
            String name = myObj.nextLine();  // Read user input
            if (name == ""){
                break;
            }
            name= name.toLowerCase();
            char lastChar= name.charAt(name.length()-1);
            lastChar+= 1;
            String MaxName= name.substring(0, name.length() - 1) + lastChar;
            List<String> autocompletedNames= jedis.zrange("name_value", ZRangeParams.zrangeByLexParams("["+name, "["+MaxName)); // searching for susann returns susann*

            jedis.del("names");
            for (String n : autocompletedNames){ // store autocompleted names again but this time taking its score in consideration
                String[] list_name_value = n.split(";");
                String autocomplete_name= list_name_value[0];
                Double autocomplete_score= Double.parseDouble(list_name_value[1]);
                jedis.zadd("names", autocomplete_score, autocomplete_name);
                //System.out.println(autocomplete_name + " " + autocomplete_score); //----- testing if order is correct in the next print
            }


            List<String> autocompletedNamesSorted= jedis.zrevrange("names", 0, -1); // returns the similar names ordered by their score
            for (String na : autocompletedNamesSorted){
                myWriter.write(na+"\n");
                //System.out.println(na);
            }
            myWriter.write(("\n"));
            System.out.println("");
        }
        myWriter.close();
        jedis.close();
        System.out.println("File written");
    }
}
