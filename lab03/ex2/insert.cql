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
VALUES ('3', '2', 'Fire Drill - The Office US', 'A video about the best dunder mifflin employee ever', 'https://www.youtube.com/watch?v=gO8N3L_aERg', toTimeStamp(now()));

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

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('8', '3', 'technoblade breaks minecraft monday', 'A video about the best minecraft pvp player ever', 'https://www.youtube.com/watch?v=RrjsbuU1o14', toTimeStamp(now()));

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES ('9', '4', 'If you are racist and you know it clap your hands, *standing ovation*', 'A video about the best comedian ever', 'https://www.youtube.com/watch?v=3sa7THpGuSk', toTimeStamp(now()));

insert into video_sharing.videos 
(video_id, user_id, video_name, video_description, video_url, creation_timestamp)
VALUES('10', '4'. 'Tell us something your mum does not know', 'A video about the best british ever', 'https://www.youtube.com/watch?v=MVIBf3cnTf0', toTimeStamp(now()));





insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('1', '2', '1', 'YES!!!!!  So I''m a manager at a software company.  Ever since I heard this song I send this out to my team every Friday.  They love it.  I know one day someone will forward it to HR.  But you know, until then it''s FFFUFL', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('2', '2', '3', 'I need a 10 hour version. I could and would literally listen to this all day. Clear Bill Wurtz vibe. Love it ❤️', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('3', '2', '4'. 'Congratulations! If you''re reading this and it''s Friday, you made it through the week! Good job! Enjoy Flat Fuck Friday!', toTimeStamp(now()))

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('4', '3', '2', 'The camera man knew what Dwight was doing and did absolutely nothing but film this chaos. Nice.', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('5', '3', '3', 'I love how Michael screams, “OH MY GOD, IT''S HAPPENING,” like he has been expecting this to happen for years. 💀', toTimeStamp(now()))

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('6', '8', '3', 'the fact that it''s jschlatt, a force of chaos, telling him to stop just makes it even better. if you can make schlatt concerned then you are a force to be reckoned with', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('7', '8', '2', 'YOUR BUILD SUCKS, YOU SUCK - Technoblade to Smajor, now in a tournament that Smajor organizes', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('8', '8', '1', 'It took him a year and a half to edit this clip, but he finally did it.', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('9', '8', '3', 'Techno is just too powerful for everyone', toTimeStamp(now()))

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('10', '9', '6', 'He''s actually a brilliant stand up comedian because he knew that atleast some1 will clap his hands subconsciously', toTimeStamp(now()))
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES('11', '9', '5', 'Plot twist- they were not clapping, they were reloading guns.', toTimeStamp(now()))





insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('1', '1', '2', 'pause', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('2', '1', '2', 'play', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('3', '1', '2', 'stop', 20, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('4', '2', '1', 'pause', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('5', '2', '3', 'pause', 20, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('6', '2', '1', 'stop', 30, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('7', '2', '3', 'play', 44, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES('8', '2', '3', 'stop', 50, toTimeStamp(now()))











