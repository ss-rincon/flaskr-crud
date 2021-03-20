DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS img;

CREATE TABLE user(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE img (
  img_id INTEGER PRIMARY KEY AUTOINCREMENT,
  img BLOB NOT NULL,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  img_title TEXT NOT NULL,
  img_comment TEXT NOT NULL,
  is_private INTEGER NOT NULL,
  FOREIGN KEY(author_id) REFERENCES user (id)
);
