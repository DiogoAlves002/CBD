package redis.ex3;

import java.util.Set;

import redis.clients.jedis.Jedis;

public class SimplePost {
        public static String USERS_KEY = "users"; // Key set for users' name
        public static String USERS_PASS = "user_and_pass"; // Key set for users' pass
    public static void main(String[] args) {
        Jedis jedis = new Jedis();
        // some users
        String[] users = { "Ana", "Pedro", "Maria", "Luis" };

        //using a list
        for (String user : users) // set
            jedis.sadd(USERS_KEY, user);
        Set<String> members= jedis.smembers(USERS_KEY); // get

        for (String member: members){
            System.out.println("member "+member);
        }


        //using a hashmap
        String[] pass = { "123", "456", "789", "password" };
        for (int i=0; i< users.length; i++){ // set
            jedis.hset(USERS_PASS, users[i], pass[i]);
        }
        
        for (int i=0; i< users.length; i++){ // get
            String u_p= jedis.hget(USERS_PASS, users[i]);
            System.out.println("user " + users[i]+ ", pass " + u_p);
        }
        jedis.close();
    }
}
