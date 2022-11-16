create keyspace if not exists video_sharing with replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};
use video_sharing;

create table if not exist users (
    user_id text primary key,
    user_name text,
    name text,
    email text,
    creation_timestamp timestamp
);


create table if not exists video (
    video_id text primary key,
    author text,
    name text,
    description text,
    tags set<text>,
    creation_timestamp timestamp
    followers_id set<text>
)

create if not exists comments(
    comment_id text primary key,
    video_id text,
    data text,
    creation_timestamp timestamp
)


create if not exists events(
    event_id text primary key,
    type text,
    video_time int,
    creation_timestamp timestamp
)



