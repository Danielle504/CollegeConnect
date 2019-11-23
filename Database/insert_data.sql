/* Test data insertion script */

USE collegeconnect;

/* SuperAdmins */
INSERT INTO User
VALUES (
    NULL,
    'superadmin1@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'SuperAdmin',
    '1'
);

/* Admins */
-- UCF
INSERT INTO User
VALUES (
    NULL,
    'admin1@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Admin',
    '1'
);

INSERT INTO User
VALUES (
    NULL,
    'admin2@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Admin',
    '2'
);

INSERT INTO User
VALUES (
    NULL,
    'admin3@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Admin',
    '3'
);

-- FSU
INSERT INTO User
VALUES (
    NULL,
    'admin4@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Admin',
    '4'
);

INSERT INTO User
VALUES (
    NULL,
    'admin5@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Admin',
    '5'
);

/* Students */
-- UCF
INSERT INTO User
VALUES (
    NULL,
    'student1@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '1'
);

INSERT INTO User
VALUES (
    NULL,
    'student2@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '2'
);

INSERT INTO User
VALUES (
    NULL,
    'student3@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '3'
);

INSERT INTO User
VALUES (
    NULL,
    'student4@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '4'
);

INSERT INTO User
VALUES (
    NULL,
    'student5@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '5'
);

INSERT INTO User
VALUES (
    NULL,
    'student6@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '6'
);

INSERT INTO User
VALUES (
    NULL,
    'student7@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '7'
);

INSERT INTO User
VALUES (
    NULL,
    'student8@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '8'
);

INSERT INTO User
VALUES (
    NULL,
    'student9@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '9'
);

INSERT INTO User
VALUES (
    NULL,
    'student10@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '10'
);

INSERT INTO User
VALUES (
    NULL,
    'student11@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '11'
);

INSERT INTO User
VALUES (
    NULL,
    'student12@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '12'
);

INSERT INTO User
VALUES (
    NULL,
    'student13@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '13'
);

INSERT INTO User
VALUES (
    NULL,
    'student14@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '14'
);

INSERT INTO User
VALUES (
    NULL,
    'student15@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '15'
);

INSERT INTO User
VALUES (
    NULL,
    'student16@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '16'
);

INSERT INTO User
VALUES (
    NULL,
    'student17@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '17'
);

INSERT INTO User
VALUES (
    NULL,
    'student18@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '18'
);

INSERT INTO User
VALUES (
    NULL,
    'student19@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '19'
);

INSERT INTO User
VALUES (
    NULL,
    'student20@knights.ucf.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '20'
);

-- FSU
INSERT INTO User
VALUES (
    NULL,
    'student21@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '21'
);

INSERT INTO User
VALUES (
    NULL,
    'student22@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '22'
);

INSERT INTO User
VALUES (
    NULL,
    'student23@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '23'
);

INSERT INTO User
VALUES (
    NULL,
    'student24@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '24'
);

INSERT INTO User
VALUES (
    NULL,
    'student25@fsu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '25'
);

-- NYU
INSERT INTO User
VALUES (
    NULL,
    'student26@nyu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '26'
);

INSERT INTO User
VALUES (
    NULL,
    'student27@nyu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '27'
);

INSERT INTO User
VALUES (
    NULL,
    'student28@nyu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '28'
);

INSERT INTO User
VALUES (
    NULL,
    'student29@nyu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '29'
);

INSERT INTO User
VALUES (
    NULL,
    'student30@nyu.edu',
    '30163935c002fc4e1200906c3d30a9c4956b4af9f6dcaef1eb4b1fcb8fba69e7a7acdc491ea5b1f2864ea8c01b01580ef09defc3b11b3f183cb21d236f7f1a6b',
    '0000000000000000',
    NULL,
    'Student',
    '30'
);

/* Universities */
INSERT INTO University
VALUES (
    NULL,
    'University of Central Florida (UCF)',
    '4000 Central Florida Blvd, Orlando, FL 32816',
    28.602000, -81.200809,
    'The University of Central Florida\'s main campus',
    68571
);

INSERT INTO University
VALUES (
    NULL,
    'Florida State University (FSU)',
    '600 W College Ave, Tallahassee, FL 32306',
    30.441942, -84.298720,
    'Florida State University\'s main campus',
    41005
);

INSERT INTO University
VALUES (
    NULL,
    'New York University (NYU)',
    'New York, NY 10003',
    40.729448, -73.996397,
    'New York University\'s main campus',
    51847
);

/* Students */
-- Admins
---- UCF
INSERT INTO Student
VALUES (NULL, 2, 1);

INSERT INTO Student
VALUES (NULL, 3, 1);

INSERT INTO Student
VALUES (NULL, 4, 1);

---- FSU
INSERT INTO Student
VALUES (NULL, 5, 2);

INSERT INTO Student
VALUES (NULL, 6, 2);

-- Students
---- UCF
INSERT INTO Student
VALUES (NULL, 7, 1);

INSERT INTO Student
VALUES (NULL, 8, 1);

INSERT INTO Student
VALUES (NULL, 9, 1);

INSERT INTO Student
VALUES (NULL, 10, 1);

INSERT INTO Student
VALUES (NULL, 11, 1);

INSERT INTO Student
VALUES (NULL, 12, 1);

INSERT INTO Student
VALUES (NULL, 13, 1);

INSERT INTO Student
VALUES (NULL, 14, 1);

INSERT INTO Student
VALUES (NULL, 15, 1);

INSERT INTO Student
VALUES (NULL, 16, 1);

INSERT INTO Student
VALUES (NULL, 17, 1);

INSERT INTO Student
VALUES (NULL, 18, 1);

INSERT INTO Student
VALUES (NULL, 19, 1);

INSERT INTO Student
VALUES (NULL, 20, 1);

INSERT INTO Student
VALUES (NULL, 21, 1);

INSERT INTO Student
VALUES (NULL, 22, 1);

INSERT INTO Student
VALUES (NULL, 23, 1);

INSERT INTO Student
VALUES (NULL, 24, 1);

INSERT INTO Student
VALUES (NULL, 25, 1);

INSERT INTO Student
VALUES (NULL, 26, 1);

---- FSU
INSERT INTO Student
VALUES (NULL, 27, 2);

INSERT INTO Student
VALUES (NULL, 28, 2);

INSERT INTO Student
VALUES (NULL, 29, 2);

INSERT INTO Student
VALUES (NULL, 30, 2);

INSERT INTO Student
VALUES (NULL, 31, 2);

---- NYU
INSERT INTO Student
VALUES (NULL, 32, 3);

INSERT INTO Student
VALUES (NULL, 33, 3);

INSERT INTO Student
VALUES (NULL, 34, 3);

INSERT INTO Student
VALUES (NULL, 35, 3);

INSERT INTO Student
VALUES (NULL, 36, 3);

/* Admins */
-- UCF
INSERT INTO Admin
VALUES (NULL, 1);

INSERT INTO Admin
VALUES (NULL, 2);

INSERT INTO Admin
VALUES (NULL, 3);

-- FSU
INSERT INTO Admin
VALUES (NULL, 4);

INSERT INTO Admin
VALUES (NULL, 5);

/* SuperAdmins */
INSERT INTO SuperAdmin
VALUES (NULL, 1);

/* RSOs */
-- UCF
INSERT INTO RSO
VALUES (NULL, 'Knight Hacks', 1);

INSERT INTO RSO
VALUES (NULL, 'HackUCF', 1);

INSERT INTO RSO
VALUES (NULL, 'Canoeing Club', 1);

INSERT INTO RSO
VALUES (NULL, 'AI@UCF', 2);

INSERT INTO RSO
VALUES (NULL, 'Underwater Basket Weaving Club', 2);

INSERT INTO RSO
VALUES (NULL, 'Engineers4Life', 3);

INSERT INTO RSO
VALUES (NULL, 'Track Club', 3);

INSERT INTO RSO
VALUES (NULL, 'Band Club', 3);

INSERT INTO RSO
VALUES (NULL, 'Boardgame Club', 3);

INSERT INTO RSO
VALUES (NULL, 'Japanese Club', 3);

-- FSU
INSERT INTO RSO
VALUES (NULL, 'Technology Club', 4);

INSERT INTO RSO
VALUES (NULL, 'Track Club', 4);

INSERT INTO RSO
VALUES (NULL, 'Literature Club', 5);

/* Events */
-- UCF
---- RSO Events
INSERT INTO Event
VALUES (
    NULL,
    'HackUCF Weekly Meeting',
    'private',
    'Come see this week\'s workshop on Wireshark!',
    '2019-11-29 18:00:00', '02:00:00',
    'Meeting',
    'HEC 101', 0, 0,
    '+19998888', 'hackucf@ucf.edu'
);

INSERT INTO Event
VALUES (
    NULL,
    'HackUCF Financials Meeting',
    'rso',
    'For the sake of transparency, we\'re releasing all our financials. Feel free to come!',
    '2019-11-30 18:00:00', '02:00:00',
    'Meeting',
    'HEC 101', 0, 0,
    '+19998888', 'hackucf@ucf.edu'
);

INSERT INTO Event
VALUES (
    NULL,
    'Knight Hacks Weekly Meeting',
    'private',
    'Come see this week\'s workshop on RESTFul APIs!',
    '2019-11-27 18:00:00', '02:00:00',
    'Meeting',
    'MSB 121', 0, 0,
    '+19998888', 'knighthacks@ucf.edu'
);

INSERT INTO Event
VALUES (
    NULL,
    'AI@UCF Weekly Meeting',
    'private',
    'Come see this week\'s workshop on Fully Convolutional Neural Networks!',
    '2019-12-06 18:00:00', '02:00:00',
    'Meeting',
    'HEC 101', 0, 0,
    '+19998888', 'aiatucf@ucf.edu'
);

---- Admin Events
INSERT INTO Event
VALUES (
    NULL,
    'UCF STEM Day',
    'public',
    'Let\'s teach kids about tech!',
    '2019-12-10 18:00:00', '02:00:00',
    'Campus Activity',
    'Student Union Ballroom', 0, 0,
    '+19998888', 'hackucf@ucf.edu'
);

INSERT INTO Event
VALUES (
    NULL,
    'Athletics at UCF',
    'private',
    'Come learn about how to get involved in athletics at UCF!',
    '2020-01-14 18:00:00', '02:00:00',
    'Meeting',
    'Student Union Ballroom', 0, 0,
    '+19998888', 'canoeingclub@ucf.edu'
);

-- FSU
---- RSO Events
INSERT INTO Event
VALUES (
    NULL,
    'Track Club Weekly Sprint',
    'private',
    'Come run with us!',
    '2019-11-30 10:00:00', '02:00:00',
    'Recreational Exercise',
    'FSU Track', 0, 0,
    '+19998888', 'trackclub@fsu.edu'
);

INSERT INTO Event
VALUES (
    NULL,
    'Literature Club Weekly Meeting',
    'private',
    'Come discuss a book with us!',
    '2019-11-26 18:00:00', '02:00:00',
    'Meeting',
    'LIT 102', 0, 0,
    '+19998888', 'litclub@fsu.edu'
);

/* RSO Events */
INSERT INTO RSO_Event
VALUES (NULL, 1, 2);

INSERT INTO RSO_Event
VALUES (NULL, 2, 2);

INSERT INTO RSO_Event
VALUES (NULL, 3, 1);

INSERT INTO RSO_Event
VALUES (NULL, 4, 4);

INSERT INTO RSO_Event
VALUES (NULL, 7, 12);

INSERT INTO RSO_Event
VALUES (NULL, 8, 13);

/* Admin Events */
INSERT INTO Admin_Event
VALUES (NULL, 5, 1);

INSERT INTO Admin_Event
VALUES (NULL, 6, 1);

/* Comments */
-- UCF
---- HackUCF Weekly Meeting
INSERT INTO Comment
VALUES (
    NULL,
    'Wow, I didn\'t even know a club like this existed at UCF!',
    '2019-11-05 12:00:00',
    1,
    7
);

INSERT INTO Comment
VALUES (
    NULL,
    'Really great job guys. Your workshops are the best!',
    '2019-12-05 12:00:00',
    1,
    8
);

INSERT INTO Comment
VALUES (
    NULL,
    'Any chance we can get a workshop on SQL Injections?',
    '2019-11-15 12:00:00',
    1,
    9
);

INSERT INTO Comment
VALUES (
    NULL,
    'Oh and maybe reverse engineering?',
    '2019-11-15 12:02:00',
    1,
    9
);

INSERT INTO Comment
VALUES (
    NULL,
    'I think this was the best workshop I ever attended',
    '2019-12-09 12:00:00',
    1,
    10
);

---- Knight Hacks Weekly Meeting
INSERT INTO Comment
VALUES (
    NULL,
    'Any idea when the hackathon is going to be this year?',
    '2019-11-27 12:00:00',
    3,
    8
);

INSERT INTO Comment
VALUES (
    NULL,
    'Anyone know of clubs similar to this one?',
    '2019-11-22 12:00:00',
    3,
    26
);

INSERT INTO Comment
VALUES (
    NULL,
    'Yeah, check out AI@UCF and HackUCF.',
    '2019-11-23 12:00:00',
    3,
    23
);

---- UCF STEM DAY
INSERT INTO Comment
VALUES (
    NULL,
    'Appreciate all the philanthropic work you guys do. My little brother had a great time!',
    '2019-12-15 12:00:00',
    5,
    23
);

INSERT INTO Comment
VALUES (
    NULL,
    'Came all the way from FSU for this!',
    '2019-12-11 12:00:00',
    5,
    30
);

-- FSU
---- Literature Club Weekly Meeting
INSERT INTO Comment
VALUES (
    NULL,
    'Hey guys! What book are you reading? Want to know if I should come.',
    '2019-11-23 12:00:00',
    8,
    30
);

/* Ratings */
-- UCF
---- HackUCF Weekly Meeting
INSERT INTO Rating
VALUES (
    NULL,
    'five',
    1,
    7
);

INSERT INTO Rating
VALUES (
    NULL,
    'five',
    1,
    8
);

INSERT INTO Rating
VALUES (
    NULL,
    'five',
    1,
    9
);

INSERT INTO Rating
VALUES (
    NULL,
    'five',
    1,
    10
);

INSERT INTO Rating
VALUES (
    NULL,
    'three',
    1,
    19
);

INSERT INTO Rating
VALUES (
    NULL,
    'three',
    1,
    17
);

-- Knight Hacks Weekly Meeting
INSERT INTO Rating
VALUES (
    NULL,
    'five',
    3,
    7
);

INSERT INTO Rating
VALUES (
    NULL,
    'five',
    3,
    8
);

INSERT INTO Rating
VALUES (
    NULL,
    'four',
    3,
    16
);

INSERT INTO Rating
VALUES (
    NULL,
    'three',
    3,
    17
);

---- UCF STEM Day
INSERT INTO Rating
VALUES (
    NULL,
    'five',
    5,
    17
);

INSERT INTO Rating
VALUES (
    NULL,
    'five',
    5,
    30
);

-- FSU
---- Literature Club Weekly Meeting
INSERT INTO Rating
VALUES (
    NULL,
    'three',
    8,
    31
);

/* RSO Members */
-- UCF
---- Knight Hacks
INSERT INTO RSO_Member
VALUES (NULL, 1, 7);

INSERT INTO RSO_Member
VALUES (NULL, 1, 8);

INSERT INTO RSO_Member
VALUES (NULL, 1, 9);

INSERT INTO RSO_Member
VALUES (NULL, 1, 10);

INSERT INTO RSO_Member
VALUES (NULL, 1, 11);

INSERT INTO RSO_Member
VALUES (NULL, 1, 12);

INSERT INTO RSO_Member
VALUES (NULL, 1, 13);

INSERT INTO RSO_Member
VALUES (NULL, 1, 14);

INSERT INTO RSO_Member
VALUES (NULL, 1, 15);

INSERT INTO RSO_Member
VALUES (NULL, 1, 16);

---- HackUCF
INSERT INTO RSO_Member
VALUES (NULL, 2, 7);

INSERT INTO RSO_Member
VALUES (NULL, 2, 8);

INSERT INTO RSO_Member
VALUES (NULL, 2, 9);

INSERT INTO RSO_Member
VALUES (NULL, 2, 10);

INSERT INTO RSO_Member
VALUES (NULL, 2, 11);

INSERT INTO RSO_Member
VALUES (NULL, 2, 12);

INSERT INTO RSO_Member
VALUES (NULL, 2, 13);

INSERT INTO RSO_Member
VALUES (NULL, 2, 14);

INSERT INTO RSO_Member
VALUES (NULL, 2, 15);

INSERT INTO RSO_Member
VALUES (NULL, 2, 16);

INSERT INTO RSO_Member
VALUES (NULL, 2, 17);

INSERT INTO RSO_Member
VALUES (NULL, 2, 18);

INSERT INTO RSO_Member
VALUES (NULL, 2, 19);

INSERT INTO RSO_Member
VALUES (NULL, 2, 20);

INSERT INTO RSO_Member
VALUES (NULL, 2, 21);

---- Canoeing Club
INSERT INTO RSO_Member
VALUES (NULL, 3, 7);

INSERT INTO RSO_Member
VALUES (NULL, 3, 8);

INSERT INTO RSO_Member
VALUES (NULL, 3, 9);

INSERT INTO RSO_Member
VALUES (NULL, 3, 10);

INSERT INTO RSO_Member
VALUES (NULL, 3, 11);

INSERT INTO RSO_Member
VALUES (NULL, 3, 12);

INSERT INTO RSO_Member
VALUES (NULL, 3, 13);

---- AI@UCF
INSERT INTO RSO_Member
VALUES (NULL, 4, 7);

INSERT INTO RSO_Member
VALUES (NULL, 4, 8);

INSERT INTO RSO_Member
VALUES (NULL, 4, 9);

INSERT INTO RSO_Member
VALUES (NULL, 4, 10);

INSERT INTO RSO_Member
VALUES (NULL, 4, 11);

---- Underwater Basket Weaving Club
INSERT INTO RSO_Member
VALUES (NULL, 5, 7);

INSERT INTO RSO_Member
VALUES (NULL, 5, 8);

INSERT INTO RSO_Member
VALUES (NULL, 5, 9);

INSERT INTO RSO_Member
VALUES (NULL, 5, 10);

INSERT INTO RSO_Member
VALUES (NULL, 5, 11);

---- Engineers4Life
INSERT INTO RSO_Member
VALUES (NULL, 6, 7);

INSERT INTO RSO_Member
VALUES (NULL, 6, 8);

INSERT INTO RSO_Member
VALUES (NULL, 6, 9);

INSERT INTO RSO_Member
VALUES (NULL, 6, 10);

INSERT INTO RSO_Member
VALUES (NULL, 6, 11);

---- Track Club
INSERT INTO RSO_Member
VALUES (NULL, 7, 7);

INSERT INTO RSO_Member
VALUES (NULL, 7, 8);

INSERT INTO RSO_Member
VALUES (NULL, 7, 9);

INSERT INTO RSO_Member
VALUES (NULL, 7, 10);

INSERT INTO RSO_Member
VALUES (NULL, 7, 11);

---- Band Club
INSERT INTO RSO_Member
VALUES (NULL, 8, 7);

INSERT INTO RSO_Member
VALUES (NULL, 8, 8);

INSERT INTO RSO_Member
VALUES (NULL, 8, 9);

INSERT INTO RSO_Member
VALUES (NULL, 8, 10);

INSERT INTO RSO_Member
VALUES (NULL, 8, 11);

---- Boardgame Club
INSERT INTO RSO_Member
VALUES (NULL, 9, 7);

INSERT INTO RSO_Member
VALUES (NULL, 9, 8);

INSERT INTO RSO_Member
VALUES (NULL, 9, 9);

INSERT INTO RSO_Member
VALUES (NULL, 9, 10);

INSERT INTO RSO_Member
VALUES (NULL, 9, 11);

---- Japanese Club
INSERT INTO RSO_Member
VALUES (NULL, 10, 7);

INSERT INTO RSO_Member
VALUES (NULL, 10, 8);

INSERT INTO RSO_Member
VALUES (NULL, 10, 9);

INSERT INTO RSO_Member
VALUES (NULL, 10, 10);

INSERT INTO RSO_Member
VALUES (NULL, 10, 11);

-- FSU
---- Technology Club
INSERT INTO RSO_Member
VALUES (NULL, 11, 27);

INSERT INTO RSO_Member
VALUES (NULL, 11, 28);

INSERT INTO RSO_Member
VALUES (NULL, 11, 29);

INSERT INTO RSO_Member
VALUES (NULL, 11, 30);

INSERT INTO RSO_Member
VALUES (NULL, 11, 31);

---- Track Club
INSERT INTO RSO_Member
VALUES (NULL, 12, 27);

INSERT INTO RSO_Member
VALUES (NULL, 12, 28);

INSERT INTO RSO_Member
VALUES (NULL, 12, 29);

INSERT INTO RSO_Member
VALUES (NULL, 12, 30);

INSERT INTO RSO_Member
VALUES (NULL, 12, 31);

---- Literature Club
INSERT INTO RSO_Member
VALUES (NULL, 13, 27);

INSERT INTO RSO_Member
VALUES (NULL, 13, 28);

INSERT INTO RSO_Member
VALUES (NULL, 13, 29);

INSERT INTO RSO_Member
VALUES (NULL, 13, 30);

INSERT INTO RSO_Member
VALUES (NULL, 13, 31);

/* RSO Requests */
-- UCF
INSERT INTO RSO_Request
VALUES (
    NULL,
    'Baking Club',
    'student2@knights.ucf.edu',
    'student3@knights.ucf.edu',
    'student4@knights.ucf.edu',
    'student5@knights.ucf.edu',
    'student6@knights.ucf.edu',
    1
);

INSERT INTO RSO_Request
VALUES (
    NULL,
    'Potato Day Club',
    'student2@knights.ucf.edu',
    'student3@knights.ucf.edu',
    'student4@knights.ucf.edu',
    'student5@knights.ucf.edu',
    'student6@knights.ucf.edu',
    15
);

-- FSU
INSERT INTO RSO_Request
VALUES (
    NULL,
    'Hackathon Club',
    'student21@fsu.edu',
    'student22@fsu.edu',
    'student23@fsu.edu',
    'student24@fsu.edu',
    'student25@fsu.edu',
    24
);

-- NYU
INSERT INTO RSO_Request
VALUES (
    NULL,
    'Sports Club',
    'student26@nyu.edu',
    'student27@nyu.edu',
    'student28@nyu.edu',
    'student29@nyu.edu',
    'student30@nyu.edu',
    29
);

INSERT INTO RSO_Request
VALUES (
    NULL,
    'Chinese Club',
    'student26@nyu.edu',
    'student27@nyu.edu',
    'student28@nyu.edu',
    'student29@nyu.edu',
    'student30@nyu.edu',
    27
);

/* Admin Event Requests */
-- UCF
INSERT INTO Admin_Event_Request
VALUES (
    NULL,
    'UCF: Disrupting AI',
    'private',
    'UCF\'s history in disrupting AI',
    '2020-01-20 18:00:00', '02:00:00',
    'Presentation',
    'Student Union Ballroom', 0, 0,
    '+19998888', 'aiatucf@ucf.edu',
    2
);

-- FSU
INSERT INTO Admin_Event_Request
VALUES (
    NULL,
    'Track Club: Getting involved',
    'private',
    'FSU\'s track team is massive and widely known. Here\'s how you can get started!',
    '2020-01-16 18:00:00', '02:00:00',
    'Recreational Exercise',
    'FSU Auditorium', 0, 0,
    '+19998888', 'trackclub@fsu.edu',
    4
);

/* RSO Member Requests */
-- UCF
---- Knight Hacks
INSERT INTO RSO_Member_Request
VALUES (NULL, 1, 23);

INSERT INTO RSO_Member_Request
VALUES (NULL, 1, 24);

INSERT INTO RSO_Member_Request
VALUES (NULL, 1, 25);

---- HackUCF
INSERT INTO RSO_Member_Request
VALUES (NULL, 2, 23);

INSERT INTO RSO_Member_Request
VALUES (NULL, 2, 24);

INSERT INTO RSO_Member_Request
VALUES (NULL, 2, 25);

INSERT INTO RSO_Member_Request
VALUES (NULL, 2, 26);

---- AI@UCF
INSERT INTO RSO_Member_Request
VALUES (NULL, 4, 23);

INSERT INTO RSO_Member_Request
VALUES (NULL, 4, 24);

INSERT INTO RSO_Member_Request
VALUES (NULL, 4, 25);
