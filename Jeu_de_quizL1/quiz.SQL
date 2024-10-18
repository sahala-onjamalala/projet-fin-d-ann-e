DROP DATABASE IF EXISTS MLR3;

CREATE DATABASE IF NOT EXISTS MLR3;
USE MLR3;
# -----------------------------------------------------------------------------
#       TABLE : TOPIC
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TOPIC
 (
   ID_TOPIC INTEGER(2) NOT NULL  ,
   TYPE CHAR(32) NULL  
   , PRIMARY KEY (ID_TOPIC) 
 ) 
 comment = ""; 

# -----------------------------------------------------------------------------
#       TABLE : SCORE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SCORE
 (
   ID_SCORE INTEGER(2) NOT NULL  ,
   ID_PLAYER INTEGER(2) NOT NULL  ,
   USER_NAME CHAR(20) NULL  ,
   SCORE INTEGER(2) NULL  ,
   DATE DATE NULL  
   , PRIMARY KEY (ID_SCORE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE SCORE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_SCORE_PLAYER
     ON SCORE (ID_PLAYER ASC);

# -----------------------------------------------------------------------------
#       TABLE : LEVEL
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LEVEL
 (
   ID_TOPIC INTEGER(2) NOT NULL  ,
   CODE_LEVEL INTEGER(4) NOT NULL  ,
   LIBELLE_LEVEL CHAR(32) NULL  
   , PRIMARY KEY (ID_TOPIC,CODE_LEVEL) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE LEVEL
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_LEVEL_TOPIC
     ON LEVEL (ID_TOPIC ASC);

# -----------------------------------------------------------------------------
#       TABLE : QUESTION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS QUESTION
 (
   ID_QUESTION INTEGER(2) NOT NULL  ,
   ID_TOPIC INTEGER(2) NOT NULL  ,
   CODE_LEVEL INTEGER(4) NOT NULL  ,
   QUESTION_TEXT CHAR(255) NULL  ,
   CORRECT_ANSWER CHAR(32) NULL  ,
   WRONG_ANSWER1 CHAR(32) NULL  ,
   WRONG_ANSWER2 CHAR(32) NULL  ,
   WRONG_ANSWER3 CHAR(32) NULL  
   , PRIMARY KEY (ID_QUESTION) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE QUESTION
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_QUESTION_LEVEL
     ON QUESTION (ID_TOPIC ASC,CODE_LEVEL ASC);

# -----------------------------------------------------------------------------
#       TABLE : COMPETITION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COMPETITION
 (
   ID_COMPETITION INTEGER(2) NOT NULL  ,
   NB_PLAYER INTEGER(3) NULL  
   , PRIMARY KEY (ID_COMPETITION) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : PLAYER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PLAYER
 (
   ID_PLAYER INTEGER(2) NOT NULL  ,
   ID_TOPIC INTEGER(2) NOT NULL  ,
   CODE_LEVEL INTEGER(4) NOT NULL  ,
   ID_SCORE INTEGER(2) NOT NULL  ,
   NAME CHAR(32) NULL  
   , PRIMARY KEY (ID_JOUEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PLAYER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PLAYER_LEVEL
     ON PLAYER (ID_TOPIC ASC,CODE_LEVEL ASC);

CREATE  INDEX I_FK_PLAYER_SCORE
     ON PLAYER (ID_SCORE ASC);

# -----------------------------------------------------------------------------
#       TABLE : PARTICIPATE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PARTICIPATE
 (
   ID_COMPETITION INTEGER(2) NOT NULL  ,
   ID_PLAYER INTEGER(2) NOT NULL  
   , PRIMARY KEY (ID_COMPETITION,ID_PLAYER) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PARTICIPATE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PARTICIPATE_COMPETITION
     ON PARTICIPATE (ID_COMPETITION ASC);

CREATE  INDEX I_FK_PARTICIPATE_PLAYER
     ON PARTICIPATE (ID_PLAYER ASC);

# -----------------------------------------------------------------------------
#       TABLE : ANSWER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ANSWER
 (
   ID_JOUEUR INTEGER(2) NOT NULL  ,
   ID_QUESTION INTEGER(2) NOT NULL  ,
   USER_RESPONSE CHAR(32) NULL  
   , PRIMARY KEY (ID_PLAYER,ID_QUESTION) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE ANSWER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_ANSWER_PLAYER
     ON ANSWER (ID_PLAYER ASC);

CREATE  INDEX I_FK_ANSWER_QUESTION
     ON ANSWER (ID_QUESTION ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE SCORE 
  ADD FOREIGN KEY FK_SCORE_PLAYER (ID_PLAYER)
      REFERENCES PLAYER (ID_PLAYER) ;


ALTER TABLE LEVEL 
  ADD FOREIGN KEY FK_LEVEL_TOPIC (ID_TOPIC)
      REFERENCES TOPIC (ID_TOPIC) ;


ALTER TABLE QUESTION 
  ADD FOREIGN KEY FK_QUESTION_LEVEL (ID_TOPIC,CODE_LEVEL)
      REFERENCES LEVEL (ID_TOPIC,CODE_LEVEL) ;


ALTER TABLE PLAYER 
  ADD FOREIGN KEY FK_PLAYER_LEVEL (ID_TOPIC,CODE_LEVEL)
      REFERENCES LEVEL (ID_TOPIC,CODE_LEVEL) ;


ALTER TABLE PLAYER 
  ADD FOREIGN KEY FK_PLAYER_SCORE (ID_SCORE)
      REFERENCES SCORE (ID_SCORE) ;


ALTER TABLE PARTICIPATE 
  ADD FOREIGN KEY FK_PARTICIPATE_COMPETITION (ID_COMPETITION)
      REFERENCES COMPETITION (ID_COMPETITION) ;


ALTER TABLE PARTICIPATE 
  ADD FOREIGN KEY FK_PARTICIPATE_PLAYER (ID_PLAYER)
      REFERENCES PLAYER (ID_PLAYER) ;


ALTER TABLE ANSWER 
  ADD FOREIGN KEY FK_ANSWER_PLAYER (ID_PLAYER)
      REFERENCES PLAYER (ID_PLAYER) ;


ALTER TABLE ANSWER 
  ADD FOREIGN KEY FK_ANSWER_QUESTION (ID_QUESTION)
      REFERENCES QUESTION (ID_QUESTION) ;

