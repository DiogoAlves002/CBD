package redis.ex4;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.params.ZRangeParams;

public class Autocomplete 
{
    public static void main( String[] args ) throws IOException
    {
        Jedis jedis = new Jedis();
        File names= new File("src/main/resources/names.txt");
        Scanner reader = new Scanner(names);
        double score= 1;
        jedis.del("names");
        while (reader.hasNextLine()) { // storing names in redis
            String name = reader.nextLine();
            jedis.zadd("names", score, name);
        }reader.close();


        File outFile = new File("CBD-14a-out.txt");
        FileWriter myWriter = new FileWriter("CBD-14a-out.txt");
        while (true){
            Scanner myObj = new Scanner(System.in);  // if i close it the program crashes ╮ (. ❛ ᴗ ❛.) ╭
            System.out.println("Search for ('Enter' for quit): ");
            String name = myObj.nextLine();  // Read user input
            if (name == ""){
                break;
            }
            char lastChar= name.charAt(name.length()-1);
            lastChar+= 1;
            String MaxName= name.substring(0, name.length() - 1) + lastChar;
            List<String> autocompletedNames= jedis.zrange("names", ZRangeParams.zrangeByLexParams("["+name, "["+MaxName)); // pesquisa por susann retorna susann*
            for (String n : autocompletedNames){
                myWriter.write(n+"\n");
                //System.out.println(n);
            }
            myWriter.write("\n");
            System.out.println("");
        }

        myWriter.close();
        jedis.close();
        System.out.println("File written");
    }
}
