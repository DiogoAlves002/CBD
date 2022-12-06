drop keyspace video_sharing;

create keyspace if not exists video_sharing with replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};
use video_sharing;

create table IF NOT EXISTS users (
    user_id int PRIMARY KEY,
    user_name text,
    name text,
    email text,
    creation_timestamp timestamp
);


create table if not exists videos (
    video_id int primary key,
    author_user_id int,
    video_name text,
    description text,
    video_url text,
    creation_timestamp timestamp,

    tags set<text>,
    ratings list <int>,
    followers_id set<int>
);


create table if not exists commentsByUser (
    comment_id int,
    author_user_id int,
    video_id int,
    comment_text text,
    creation_timestamp timestamp,

    PRIMARY KEY (comment_id, author_user_id, creation_timestamp)
)
WITH CLUSTERING ORDER BY (author_user_id ASC, creation_timestamp DESC);


create table if not exists commentsByVideo (
    comment_id int,
    author_user_id int,
    video_id int,
    comment_text text,
    creation_timestamp timestamp,

    PRIMARY KEY (comment_id, video_id, creation_timestamp)
)
WITH CLUSTERING ORDER BY (video_id ASC, creation_timestamp DESC);


create table if not exists events(
    event_id int primary key,
    video_id int,
    user_id int,
    event_ text,
    video_time int,
    creation_timestamp timestamp  
);











