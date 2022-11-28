# ex b

select json * from video_sharing.users;

select json * from video_sharing.video;

select json * from video_sharing.comments;

select json * from video_sharing.events;



# ex c

# 7. Permitir a pesquisa de todos os vídeos de determinado autor;
select json * from video_sharing.video where author = 'cheese';


# 8. Permitir a pesquisa de comentários por utilizador, ordenado inversamente pela data;
select json * from video_sharing.comments where author = 'cheese' order by creation_timestamp desc;


# 9. Permitir a pesquisa de comentários por vídeos, ordenado inversamente pela data;
select json * from video_sharing.comments where video_id = 15 order by creation_timestamp desc;


# 10. Permitir a pesquisa do rating médio de um vídeo e quantas vezes foi votado;

# there is no length function so we need to create a UDF funtion (user defined functions)
# UDFs are disabled by default, we need to enable it by setting enable_user_defined_functions: true on cassandra.yaml
# https://docs.datastax.com/en/cql-oss/3.3/cql/cql_reference/cqlCreateFunction.html

create function if not exists video_sharing.lsizeof(
    data list<text>
    ) 
    CALLED ON NULL INPUT 
    RETURNS int 
    LANGUAGE java 
    AS 'return data.size();';

select json avg(rating), lsizeof(rating) from video_sharing.video where video_id = 15;




# ex d

# 1. Os últimos 3 comentários introduzidos para um vídeo;
select json * from video_sharing.comments where video_id = 15 order by creation_timestamp desc limit 3;

# 2. Lista das tags de determinado vídeo;
select json tags from video_sharing.video where video_id = 3;

# 3. Todos os vídeos com a tag 'the office';
select json * from video_sharing.video where tags contains 'the office';

# 4. Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
select json * from video_sharing.events where video_id = 2 and user_id = 3 order by creation_timestamp desc limit 5;

# 5. Vídeos partilhados por determinado utilizador (maria1987, por exemplo) num determinado período de tempo (Agosto de 2017, por exemplo);
select json * from video_sharing.video where author = 'broccoli' and creation_timestamp > '2017-08-01' and creation_timestamp < '2017-09-01';

# 6. Os últimos 10 vídeos, ordenado inversamente pela data da partilhada;
select json * from video_sharing.video order by creation_timestamp desc limit 10;

# 7. Todos os seguidores (followers) de determinado vídeo;
select json * from video_sharing.followers where video_id = 6;

# 8. Todos os comentários (dos vídeos) que determinado utilizador está a seguir (following);
select json * from video_sharing.comments where video_id in (select comments_id from video_sharing.users where user_id = 3);

# 9. Os 5 vídeos com maior rating;
select json * from video_sharing.video order by avg(rating) desc limit 5;

# 10. Uma query que retorne todos os vídeos e que mostre claramente a forma pela qual estão ordenados;
select json * from video_sharing.video order by creation_timestamp desc;

# 11. Lista com as Tags existentes e o número de vídeos catalogados com cada uma delas;
select json tags, count(*) from video_sharing.video group by tags;

# 12. .. 13. Descreva 2 perguntas adicionais à base dados (alíneas 12 a 13), significativamente distintas das anteriores, e apresente igualmente a solução de pesquisa para cada questão.









