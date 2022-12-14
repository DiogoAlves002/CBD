-- ex b

select json * from video_sharing.users;

select json * from video_sharing.videos;

select json * from video_sharing.commentsByUser;

select json * from video_sharing.commentsByVideo;

select json * from video_sharing.events;



-- ex c

-- 7. Permitir a pesquisa de todos os vídeos de determinado autor;
select json * from video_sharing.videos where author_user_id = 13;


-- 8. Permitir a pesquisa de comentários por utilizador, ordenado inversamente pela data;
select json * from video_sharing.commentsByUser where author_user_id = 15;


-- 9. Permitir a pesquisa de comentários por vídeos, ordenado inversamente pela data;
select json * from video_sharing.commentsByVideo where video_id = 15;


-- 10. Permitir a pesquisa do rating médio de um vídeo e quantas vezes foi votado;

-- there is no length function so we need to create a UDF funtion (user defined functions)
-- UDFs are disabled by default, we need to enable it by setting enable_user_defined_functions: true on cassandra.yaml
-- https://docs.datastax.com/en/cql-oss/3.3/cql/cql_reference/cqlCreateFunction.html

create function if not exists video_sharing.lsizeof(
    data list<text>
    ) 
    CALLED ON NULL INPUT 
    RETURNS int 
    LANGUAGE java 
    AS 'return data.size();';

-- select json avg(ratings), lsizeof(ratings) from video_sharing.videos where video_id = 15;
select json avg(ratings) from video_sharing.videos where video_id = 15;











