insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('1', 'sandwich', 'Jonty Sweeney', 'sandwich@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('2', 'crocodile', 'Arley Sanderson', 'crocodile@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('3', 'broccoli', 'Colin Hoover', 'broccoli@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('4', 'muffin', 'Alexa Hutchings', 'muffin@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('5', 'cookie', 'Myles Castaneda', 'cookie@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES ('6', 'lettuce', 'Zayn Mcgee', 'lettuce@gmail.com', toTimeStamp(now()));






insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('1', '1', 'These guys made an earth sandwich!', 'A video about the best sandwich ever', 'https://www.youtube.com/shorts/LEKnMVomL0k', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('2', '1', 'Flat Fuck friday', 'A video about the best crocodile ever', 'https://www.youtube.com/watch?v=A5U8ypHq3BU', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('3', '2', 'Forced to Eat Broccoli - The Office', 'A video about the best broccoli ever', 'https://www.youtube.com/watch?v=wW-4R3nYFEg', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('4', '2', 'Guy thinks I cant play Rush E and calls me a liar', 'A video about the best pianist ever', 'https://www.youtube.com/watch?v=on4IoQ2MQ7M', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('5', '2', 'Chef Mike', 'A video about the best chef ever', 'https://www.youtube.com/watch?v=X19pYwmaTgs', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('6', '3', 'Trailer Park Boys - One nice kitty', 'A video about the best kitty ever', 'https://www.youtube.com/watch?v=CGz36bWJ61k', toTimeStamp(now()));
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('7', '3', 'The Office - I declare bankruptcy! Michael Scott', 'A video about the best boss ever', 'https://www.youtube.com/watch?v=HuGIgf-ICHM', toTimeStamp(now()));

