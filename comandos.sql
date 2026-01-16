CREATE TABLE "users" (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL,
  "password_hash" TEXT NOT NULL,
  "email" TEXT NOT NULL COLLATE NOCASE UNIQUE,
  "username" TEXT NOT NULL COLLATE NOCASE UNIQUE,
  "created" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP ) STRICT;

 CREATE TABLE "sessions" (
  "token" TEXT PRIMARY KEY,
  "user_id" INTEGER NOT NULL,
  "ip" TEXT NOT NULL,
  "created" INTEGER NOT NULL DEFAULT (STRFTIME("%s", "NOW"))
  "expires" INTEGER NOT NULL,
  FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE
 ) WITHOUT ROWID, STRICT;

 CREATE INDEX "idx_resets_user_id" ON "resets" ("user_id");

 CREATE TABLE "sessions" (
 "token" TEXT PRIMARY KEY);


CREATE TABLE "coursers" (
 "id" INTEGER PRIMARY KEY,
 "slug" TEXT NOT NULL COLLATE NOCASE UNIQUE,
 "title" TEXT NOT NULL,
 "description" TEXT NOT NULL,
 "lessons"
 "hours"
 "created"
