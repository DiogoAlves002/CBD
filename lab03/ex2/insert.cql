

# users
insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (1, 'sandwich', 'Jonty Sweeney', 'sandwich@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (2, 'crocodile', 'Arley Sanderson', 'crocodile@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (3, 'broccoli', 'Colin Hoover', 'broccoli@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (4, 'muffin', 'Alexa Hutchings', 'muffin@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (5, 'cookie', 'Myles Castaneda', 'cookie@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (6, 'lettuce', 'Zayn Mcgee', 'lettuce@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (7, 'pizza', 'Kamron Mccarty', 'pizza@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (8, 'bannana', 'Marshall Patel', 'bannana@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (9, 'burger', 'Ronan Anderson', 'burger@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (10, 'cheese', 'Riley Turner', 'cheese@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (11, 'cake', 'Sofia Patterson', 'cake@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (12, 'pineapple', 'Riley Turner', 'pineapple@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (13, 'cheese', 'Nora Cooper', 'cheese@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (14, 'eggplant', 'Juliana Campbell', 'eggplant@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (15, 'chocolate', 'Winston Walker', 'chocolate@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (16, 'bacon', 'Diana Martin', 'bacon@gmail.com', toTimeStamp(now()));

insert into video_sharing.users
(user_id, user_name, name, email, creation_timestamp)
VALUES (17, 'beens', 'Elianna Gray', 'beens@gmail.com', toTimeStamp(now()));









# videos
insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (1, 1, 'These guys made an earth sandwich!', 'A video about the best sandwich ever', 'https://www.youtube.com/shorts/LEKnMVomL0k', toTimeStamp(now()), {'sandwich', 'earth', 'food'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (2, 1, 'Flat Fuck friday', 'A video about the best crocodile ever', 'https://www.youtube.com/watch?v=A5U8ypHq3BU', toTimeStamp(now()), {'crocodile'});


insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (3, 2, 'Fire Drill - The Office US', 'A video about the best dunder mifflin employee ever', 'https://www.youtube.com/watch?v=gO8N3L_aERg', toTimeStamp(now()), {'office', 'dunder mifflin', 'fire drill', 'dwight'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (4, 2, 'Guy thinks I cant play Rush E and calls me a liar', 'A video about the best pianist ever', 'https://www.youtube.com/watch?v=on4IoQ2MQ7M', toTimeStamp(now()), {'piano', 'music'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (5, 2, 'Chef Mike', 'A video about the best chef ever', 'https://www.youtube.com/watch?v=X19pYwmaTgs', toTimeStamp(now()), {'chef', 'food'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (6, 3, 'Trailer Park Boys - One nice kitty', 'A video about the best kitty ever', 'https://www.youtube.com/watch?v=CGz36bWJ61k', toTimeStamp(now()), {'kitty'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (7, 3, 'The Office - I declare bankruptcy! Michael Scott', 'A video about the best boss ever', 'https://www.youtube.com/watch?v=HuGIgf-ICHM', toTimeStamp(now()), {'the office', 'boss'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (8, 3, 'technoblade breaks minecraft monday', 'A video about the best minecraft pvp player ever', 'https://www.youtube.com/watch?v=RrjsbuU1o14', toTimeStamp(now()), {'minecraft', 'pvp'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (9, 4, 'If you are racist and you know it clap your hands', 'A video about the best comedian ever', 'https://www.youtube.com/watch?v=3sa7THpGuSk', toTimeStamp(now()), {'comedian'});

insert into video_sharing.videos 
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES(10, 4, 'Tell us something your mum does not know', 'A video about the best british ever', 'https://www.youtube.com/watch?v=MVIBf3cnTf0', toTimeStamp(now()), {'british'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (11, 2, 'My very first somewhat useless invention', 'A video about the best invention ever', 'https://www.youtube.com/watch?v=iW1Nff6jgjo', toTimeStamp(now()), {'russian', 'invention'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (12, 3, 'final euro 2016 golo de eder chuta dai', 'A video about the best goal ever', 'https://www.youtube.com/watch?v=_t-4V4am5Qk', toTimeStamp(now()), {'goal', 'euro 2016'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (13, 3, 'It Is Wednesday My Dudes', 'A video about the best wekday ever', 'https://www.youtube.com/watch?v=du-TY1GUFGk', toTimeStamp(now()), {'wednesday'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (14, 3, 'Ozzy Man Reviews: Best Soccer Ending Ever', 'A video about the best football game ever', 'https://www.youtube.com/watch?v=j-rmM1uQdms', toTimeStamp(now()), {'football'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (15, 4, 'Toddler Instantly Rips off Baby Proof Plate With Ease', 'A video about the best baby ever', 'https://www.youtube.com/shorts/wfWMs_0wd_g', toTimeStamp(now()), {'baby', 'cute'});

insert into video_sharing.videos 
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES(16, 4. 'The Superman''s Return - Michael Guerra is back on bike to fight road cyclists'' crimes', 'A video about the best cyclist ever', 'https://www.youtube.com/watch?v=3Iz7ZMALaCY', toTimeStamp(now()), {'cyclist'});

insert into video_sharing.videos
(video_id, user_id, video_name, video_description, video_url, creation_timestamp, tags)
VALUES (17, 2, 'But I Did Kidnap His Wife!', 'A video about the best criminal ever', 'https://www.youtube.com/watch?v=52q-wJQAO-Y', toTimeStamp(now()), {'gta5', 'trevor', 'michael'});









# comments
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(1, 2, 1, 'YES!!!!!  So I''m a manager at a software company.  Ever since I heard this song I send this out to my team every Friday.  They love it.  I know one day someone will forward it to HR.  But you know, until then it''s FFFUFL', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {1}
where video_id = 2;
update video_sharing.user
set comments = comments + {1}
where user_id = 1;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(2, 2, 3, 'I need a 10 hour version. I could and would literally listen to this all day. Clear Bill Wurtz vibe. Love it ❤️', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {2}
where video_id = 2;
update video_sharing.user
set comments = comments + {2}
where user_id = 3;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(3, 2, 4. 'Congratulations! If you''re reading this and it''s Friday, you made it through the week! Good job! Enjoy Flat Fuck Friday!', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {3}
where video_id = 2;
update video_sharing.user
set comments = comments + {3}
where user_id = 4;


insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(4, 3, 2, 'The camera man knew what Dwight was doing and did absolutely nothing but film this chaos. Nice.', toTimeStamp(now()))
insert into video_sharing.comments
update video_sharing.video
set comments = comments + {4}
where video_id = 3;
update video_sharing.user
set comments = comments + {4}
where user_id = 2;
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(5, 3, 3, 'I love how Michael screams, “OH MY GOD, IT''S HAPPENING,” like he has been expecting this to happen for years. 💀', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {5}
where video_id = 3;
update video_sharing.user
set comments = comments + {5}
where user_id = 3;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(6, 8, 3, 'the fact that it''s jschlatt, a force of chaos, telling him to stop just makes it even better. if you can make schlatt concerned then you are a force to be reckoned with', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {6}
where video_id = 8;
update video_sharing.user
set comments = comments + {6}
where user_id = 3;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(7, 8, 2, 'YOUR BUILD SUCKS, YOU SUCK - Technoblade to Smajor, now in a tournament that Smajor organizes', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {7}
where video_id = 8;
update video_sharing.user
set comments = comments + {7}
where user_id = 2;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(8, 8, 1, 'It took him a year and a half to edit this clip, but he finally did it.', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {8}
where video_id = 8;
update video_sharing.user
set comments = comments + {8}
where user_id = 1;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(9, 8, 3, 'Techno is just too powerful for everyone', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {9}
where video_id = 8;
update video_sharing.user
set comments = comments + {9}
where user_id = 3;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(10, 9, 6, 'He''s actually a brilliant stand up comedian because he knew that atleast some1 will clap his hands subconsciously', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {10}
where video_id = 9;
update video_sharing.user
set comments = comments + {10}
where user_id = 6;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(11, 9, 5, 'Plot twist- they were not clapping, they were reloading guns.', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {11}
where video_id = 9;
update video_sharing.user
set comments = comments + {11}
where user_id = 5;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(12, 12, 7, 'a única pessoa deste mundo que queria que o Éder chutasse à baliza!', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {12}
where video_id = 12;
update video_sharing.user
set comments = comments + {12}
where user_id = 7;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(13, 12, 8, 'I''m Portuguese and I don''t understand a word of what he''s saying but I''m still laughing', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {13}
where video_id = 12;
update video_sharing.user
set comments = comments + {13}
where user_id = 8;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(14, 13, 9, 'I just realized... 2020 began on a Wednesday. This whole year has been one long aaaaaah. 2020 is the world''s longest It is Wednesday my dudes ever.', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {14}
where video_id = 13;
update video_sharing.user
set comments = comments + {14}
where user_id = 9;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(15, 13, 10, 'Imagine if this was the only evidence that humans ever existed', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {15}
where video_id = 13;
update video_sharing.user
set comments = comments + {15}
where user_id = 10;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(16, 14, 11, 'I''m not crying, you''re crying', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {16}
where video_id = 14;
update video_sharing.user
set comments = comments + {16}
where user_id = 11;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(17, 14, 12, 'Hellooooo is there a less shit referee around? - every football fan ever', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {17}
where video_id = 14;
update video_sharing.user
set comments = comments + {17}
where user_id = 12;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(18, 14, 13, 'Being a fan of soccer, moments like this are literally beautiful LOL', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {18}
where video_id = 14;
update video_sharing.user
set comments = comments + {18}
where user_id = 13;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(19, 15, 14, 'It must be hard for him tobe a single child raising 2 parents', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {19}
where video_id = 15;
update video_sharing.user
set comments = comments + {19}
where user_id = 14;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(20, 15, 15, 'He was like “I don''t even know why you try anymore Jim” lol. Yeah nothing is really baby proof. Even birth control lol', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {20}
where video_id = 15;
update video_sharing.user
set comments = comments + {20}
where user_id = 15;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(21, 15, 16, 'His expression at the end said: "Is that all you got, bro?"', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {21}
where video_id = 15;
update video_sharing.user
set comments = comments + {21}
where user_id = 16;
insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(22, 15, 17, 'He looks dissapointed in his dad for buying that instead of toys.', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {22}
where video_id = 15;
update video_sharing.user
set comments = comments + {22}
where user_id = 17;

insert into video_sharing.comments
(comment_id, video_id, author_user_id, data, creation_timestamp)
VALUES(23, 16, 18, '"what is he doing ?" "He''s beginning to believe"', toTimeStamp(now()))
update video_sharing.video
set comments = comments + {23}
where video_id = 16;
update video_sharing.user
set comments = comments + {23}
where user_id = 18;











# events
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(1, 1, 2, 'pause', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(2, 1, 2, 'play', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(3, 1, 2, 'stop', 20, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(4, 2, 1, 'pause', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(5, 2, 3, 'pause', 20, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(6, 2, 1, 'stop', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(7, 2, 3, 'play', 20, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(8, 2, 3, 'stop', 40, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(9, 3, 4, 'pause', 15, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(10, 3, 4, 'play', 15, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(11, 4, 8, 'stop', 50, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(12, 5, 10, 'pause', 100, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(13, 5, 10, 'play', 100, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(14, 6, 11, 'pause', 10, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(15, 6, 14, 'stop', 30, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(15, 6, 11, 'play', 10, toTimeStamp(now()))

insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(16, 7, 12, 'pause', 80, toTimeStamp(now()))
insert into video_sharing.events
(event_id, video_id, user_id, event_type, video_time, , creation_timestamp)
VALUES(17, 7, 12, 'play', 80, toTimeStamp(now()))









# followers
update video_sharing.video
set followers = followers + {2, 3, 4}
where video_id = 1

update video_sharing.video
set followers = followers + {1, 4}
where video_id = 2

update video_sharing.video
set followers = followers + {2, 4, 6, 9, 10}
where video_id = 3

update video_sharing.video
set followers = followers + {3, 4, 10}
where video_id = 5

update video_sharing.video
set followers = followers + {7, 9, 10, 15, 16, 17}
where video_id = 6

update video_sharing.video
set followers = followers + {1}
where video_id = 7

update video_sharing.video
set followers = followers + {1, 4, 5, 12, 13, 14, 16, 17}
where video_id = 8

update video_sharing.video
set followers = followers + {1, 15, 16}
where video_id = 11

update video_sharing.video
set followers = followers + {2, 7, 11}
where video_id = 12

update video_sharing.video
set followers = followers + {1, 3, 4, 7, 8, 9, 10, 14, 16, 17}
where video_id = 15

update video_sharing.video
set followers = followers + {1, 14, 15, 16, 17}
where video_id = 17














