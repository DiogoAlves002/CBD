package redis.ex3;

import redis.clients.jedis.Jedis;

public class Forum 
{
    public static void main( String[] args )
    {
        // Ensure you have redis-server running
        Jedis jedis = new Jedis();
        System.out.println("PING");
        System.out.println(jedis.ping());
        //System.out.println(jedis.info());
        jedis.set("myKey", "myValue");
        jedis.set("anotherKey", "anotherValue");
        System.out.println(jedis.exists("myKey"));
        jedis.del("myKey");
        System.out.println(jedis.get("anotherKey"));
        jedis.close();
    }
}
