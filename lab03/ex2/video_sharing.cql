create keyspace if not exists video_sharing with replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};
use video_sharing;

create table if not exist users (
    user_id text primary key,
    user_name text not null,
    name text not null,
    email text not null,
    creation_timestamp timestamp not null
    comments_id set <text>
);


create table if not exists video (
    video_id text primary key,
    author text not null,
    name text not null,
    description text not null,
    creation_timestamp timestamp not null

    tags set<text> not null,
    followers_id set<text> not null
    rating list <int> not null
    comments_id set <text>,
);


create table if not exists comments(
    comment_id text primary key,
    video_id text not null,
    author_user_id text not null
    data text not null,
    creation_timestamp timestamp not null
);


create table if not exists events(
    event_id text primary key,
    video_id text not null,
    user_id text not null,
    type text not null,
    video_time int not null,
    creation_timestamp timestamp not null
);











