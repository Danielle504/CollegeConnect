CREATE TABLE User (
    user_id        INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    user_email     VARCHAR(254) NOT NULL,
    user_passhash  CHAR(128) NOT NULL,
    user_salt      CHAR(16) NOT NULL,
    user_firstname VARCHAR(20) NOT NULL,
    user_lastname  VARCHAR(20) NOT NULL,
    PRIMARY KEY (user_id),
    UNIQUE KEY (user_email)
);

CREATE TABLE Student (
    student_id     INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id        INTEGER UNSIGNED NOT NULL,
    university_id  INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE,
    FOREIGN KEY (university_id) REFERENCES University
        ON DELETE CASCADE
);

CREATE TABLE Admin (
    admin_id    INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    student_id  INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (admin_id),
    FOREIGN KEY (student_id) REFERENCES Student
        ON DELETE CASCADE,
);

CREATE TABLE SuperAdmin (
    superadmin_id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id        INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (superadmin_id),
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE
);

CREATE TABLE University (
    university_id            INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    university_name          VARCHAR(64) NOT NULL,
    university_address       VARCHAR(128),
    university_latitude      FLOAT(10,6),
    university_longitude     FLOAT(10,6),
    university_description   VARCHAR(256),
    university_studentcount  INTEGER UNSIGNED,
    PRIMARY KEY (university_id)
);

CREATE TABLE RSO (
    rso_id      INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    rso_name    VARCHAR(64) NOT NULL,
    admin_id    INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (rso_id),
    FOREIGN KEY (admin_id) REFERENCES Admin
        ON DELETE CASCADE
);

CREATE TABLE Event (
    event_id            INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    event_name          VARCHAR(64) NOT NULL,
    event_privacy       ENUM('public','private','rso') NOT NULL,
    event_description   VARCHAR(256),
    event_time          TIME,
    event_date          DATE,
    event_duration      TIME,
    event_category      VARCHAR(16),
    event_address       VARCHAR(128),
    event_latitude      FLOAT(10,6),
    event_longitude     FLOAT(10,6),
    event_contactphone  VARCHAR(20),
    event_contactemail  VARCHAR(254),
    PRIMARY KEY (event_id)
);

CREATE TABLE RSO_Event (
    rsoevent_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    event_id    INTEGER UNSIGNED NOT NULL,
    rso_id      INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (rsoevent_id),
    FOREIGN KEY (event_id) REFERENCES Event
        ON DELETE CASCADE,
    FOREIGN KEY (rso_id) REFERENCES RSO
        ON DELETE CASCADE
);

CREATE TABLE Admin_Event (
    adminevent_id        INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    event_id             INTEGER UNSIGNED NOT NULL,
    admin_id             INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (adminevent_id),
    FOREIGN KEY (event_id) REFERENCES Event
        ON DELETE CASCADE,
    FOREIGN KEY (admin_id) REFERENCES Admin
        ON DELETE CASCADE
);

CREATE TABLE Comment (
    comment_id         INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    comment_body       VARCHAR(1024) NOT NULL,
    comment_timestamp  TIMESTAMP NOT NULL,
    event_id           INTEGER UNSIGNED NOT NULL,
    user_id            INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (event_id) REFERENCES Event
        ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE
);

CREATE TABLE Rating (
    rating_id   INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    rating_num  ENUM('one','two','three','four','five') NOT NULL,
    event_id    INTEGER UNSIGNED NOT NULL,
    user_id     INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (event_id) REFERENCES Event
        ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE
);

CREATE TABLE RSO_Member (
    member_id   INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    rso_id      INTEGER UNSIGNED NOT NULL,
    user_id     INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (member_id),
    FOREIGN KEY (rso_id) REFERENCES RSO
        ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE
);

CREATE TABLE RSO_Request (
    rsorequest_id             INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    rsorequest_name           VARCHAR(64) NOT NULL,
    rsorequest_student1email  VARCHAR(254) NOT NULL,
    rsorequest_student2email  VARCHAR(254) NOT NULL,
    rsorequest_student3email  VARCHAR(254) NOT NULL,
    rsorequest_student4email  VARCHAR(254) NOT NULL,
    rsorequest_student5email  VARCHAR(254) NOT NULL,
    student_id                INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (rsorequest_id),
    FOREIGN KEY (student_id) REFERENCES Student
        ON DELETE CASCADE
);

CREATE TABLE Admin_Event_Request (
    eventrequest_id            INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    eventrequest_name          VARCHAR(64) NOT NULL,
    eventrequest_scope         ENUM('public','private','rso') NOT NULL,
    eventrequest_description   VARCHAR(256),
    eventrequest_time          TIME,
    eventrequest_date          DATE,
    eventrequest_duration      TIME,
    eventrequest_category      VARCHAR(16),
    eventrequest_address       VARCHAR(128),
    eventrequest_latitude      FLOAT(10,6),
    eventrequest_longitude     FLOAT(10,6),
    eventrequest_contactphone  VARCHAR(20),
    eventrequest_contactemail  VARCHAR(254),
    PRIMARY KEY (eventrequest_id)
);

CREATE TABLE RSO_Member_Request (
    memberrequest_id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    rso_id            INTEGER UNSIGNED NOT NULL,
    user_id           INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (memberrequest_id),
    FOREIGN KEY (rso_id) REFERENCES RSO
        ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User
        ON DELETE CASCADE
);