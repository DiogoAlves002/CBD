package redis.ex5;


import java.io.FileWriter;
import java.io.IOException;

import redis.clients.jedis.Jedis;

public class Chat 
{
    static Jedis jedis;
    static FileWriter myWriter;
    
    static void addUser(String user) throws IOException{
        jedis.rpush("users", user);
        myWriter.write("user added!\n");
        //System.out.println("user added!");
    }

    static void followUser(String userA, String userB) throws IOException{
        jedis.rpush(userA+"follows", userB);
        myWriter.write("user " + userA + " now follows " + userB + "!\n");
        //System.out.println("user " + userA + " now follows " + userB + "!");
    }

    static void unfollowUser(String userA, String userB) throws IOException{
        jedis.lrem(userA+"follows", 1, userB);
        myWriter.write("user " + userA + " stopped following " + userB + "!\n");
        //System.out.println("user " + userA + " stopped following " + userB + "!");
    }

    static void sendMessage(String user, String message) throws IOException{
        jedis.rpush(user+"messages", message);
        myWriter.write(user + "'s message sent!\n");
        //System.out.println(user + "'s message sent!");
    }

    static void readMessage(String user) throws IOException{
        boolean m= true;
        for (String follower : jedis.lrange(user+"follows", 0, -1)){ // gets all follwers
            for (String message : jedis.lrange(follower+"messages", 0, -1)){ // gets their messages
                myWriter.write(follower + ": " + message+"\n");
                //System.out.println(follower + ": " + message);
                m= false;
            }
        }
        if (m){
            myWriter.write("ERROR: No messages yet!\n");
            //System.out.println("ERROR: No messages yet!");
        }
    }

    // additional group functionalities
    static void joinGroup(String user, String group) throws IOException{
        jedis.rpush("group"+user, group); // members of group
        jedis.rpush("group"+group, user); // groups user is in
        myWriter.write("user " + user + " joined " + group + "!\n");
        //System.out.println("user " + user + " joined " + group + "!");
    }

    static void leaveGroup(String user, String group) throws IOException{ // list of groups the user is part of
        jedis.lrem("group"+user, 1, group);
        myWriter.write("user " + user + " left " + group + "!\n");
        //System.out.println("user " + user + " left " + group + "!");
    }

    static void sendMessage(String user, String group, String message) throws IOException{
        boolean m= true;
        for (String checkIfPartOfgroup : jedis.lrange("group"+user, 0, -1)){
            if (checkIfPartOfgroup.equals(group)){
                jedis.rpush("groupMessages"+group+user, message);
                myWriter.write(user + "'s message sent to " + group + "!\n");
                //System.out.println(user + "'s message sent to " + group + "!");
                m= false;
            }
        }
        if (m){
            myWriter.write("ERROR: user " + user + " isn't part of " + group + "!\n");
            //System.out.println("ERROR: user " + user + " isn't part of " + group + "!");
        }
    }

    static void readMessage(String user, String group) throws IOException{
        boolean m= true;
        for (String member : jedis.lrange("group"+group, 0, -1)){ // gets all members of the group
            if (! member.equals(user)){
                for (String message : jedis.lrange("groupMessages"+group+member, 0, -1)){ // gets all messages each the member sent to the group
                    myWriter.write("(" + group + ")" + " " + member + ": " + message+"\n");
                    //System.out.println("(" + group + ")" + " " + member + ": " + message);
                    m= false;
                }
            }
        }
        if (m){
            myWriter.write("ERROR: No messages from any group yet!\n");
            //System.out.println("ERROR: No messages from any group yet!");
        }
    }



    public static void main( String[] args ) throws IOException
    {
        Chat.jedis= new Jedis();
        Chat.jedis.flushDB();
        Chat.myWriter = new FileWriter("CBD-15a-out.txt");


        // tests
        String joao = "joao";
        String maria = "maria";
        String fabio = "fabio";
        String ines = "ines";

        addUser(joao);
        addUser(maria);
        addUser(fabio);
        addUser(ines);

        sendMessage(joao, "ola");
        sendMessage(joao, "eu sou o joao");

        readMessage(maria);
        followUser(maria, joao);
        readMessage(maria);

        String vermelho = "vermelho";
        String azul = "azul";

        joinGroup(fabio, vermelho);
        sendMessage(fabio, vermelho, "ola a todos");

        sendMessage(ines, vermelho, "olaaaa");
        joinGroup(ines, vermelho);
        sendMessage(ines, vermelho, "agora sim, olaaaa");

        leaveGroup(ines, vermelho);
        readMessage(ines, vermelho);

        joinGroup(joao, azul);
        sendMessage(joao, azul, "ola a todos no grupo azul");

        joinGroup(maria, vermelho);
        joinGroup(maria, azul);
        readMessage(maria, vermelho);
        readMessage(maria, azul);

        myWriter.close();
    }
}
