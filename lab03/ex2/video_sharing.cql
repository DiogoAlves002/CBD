create keyspace if not exists video_sharing with replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};
use video_sharing;

create table if not exist users (
    user_id int primary key,
    user_name text not null,
    name text not null,
    email text not null,
    creation_timestamp timestamp not null,
    
    comments_id set <text>
);


create table if not exists video (
    video_id int primary key,
    author text not null,
    name text not null,
    description text not null,
    creation_timestamp timestamp not null,

    tags set<text> not null,
    rating list <int>,
    followers_id set<int>,
    comments_id set <int>
);


create table if not exists comments(
    comment_id int primary key,
    video_id int not null,
    author_user_id int not null,
    data text not null,
    creation_timestamp timestamp not null
);


create table if not exists events(
    event_id int primary key,
    video_id int not null,
    user_id int not null,
    event_ text not null,
    video_time int not null,
    creation_timestamp timestamp not null
);











