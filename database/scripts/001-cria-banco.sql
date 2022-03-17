CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);

CREATE TABLE sessions (
   id SERIAL PRIMARY KEY,
   token TEXT NOT NULL UNIQUE,
   "userId" INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE  urls (
	id SERIAL PRIMARY KEY,
	url TEXT NOT NULL UNIQUE,
	"shortUrl" TEXT NOT NULL UNIQUE,
	"userId" INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE visits (
	id SERIAL PRIMARY KEY,
	"urlId" INTEGER NOT NULL REFERENCES urls(id)
);