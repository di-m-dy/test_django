-- polls_quiz definition

CREATE TABLE "polls_quiz" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL, "description" text NOT NULL);

-- polls_question definition

CREATE TABLE "polls_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL, "quiz_id" bigint NOT NULL REFERENCES "polls_quiz" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE INDEX "polls_question_quiz_id_10603be3" ON "polls_question" ("quiz_id");

-- polls_choice definition

CREATE TABLE "polls_choice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "choice_text" varchar(200) NOT NULL, "correct" bool NOT NULL, "question_id" bigint NOT NULL REFERENCES "polls_question" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE INDEX "polls_choice_question_id_c5b4b260" ON "polls_choice" ("question_id");


-- polls_userprofile definition

CREATE TABLE "polls_userprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "currency" integer NOT NULL, "background_color" varchar(7) NOT NULL, "border_color" varchar(7) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);


-- polls_useranswer definition

CREATE TABLE "polls_useranswer" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "choice_id" bigint NOT NULL REFERENCES "polls_choice" ("id") DEFERRABLE INITIALLY DEFERRED, "question_id" bigint NOT NULL REFERENCES "polls_question" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "result" bool NOT NULL);

CREATE INDEX "polls_useranswer_choice_id_3d54e13e" ON "polls_useranswer" ("choice_id");
CREATE INDEX "polls_useranswer_question_id_054acd02" ON "polls_useranswer" ("question_id");
CREATE INDEX "polls_useranswer_user_id_06f449ba" ON "polls_useranswer" ("user_id");
 
