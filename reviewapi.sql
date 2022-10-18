CREATE TABLE `Category` (
    `id`            INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `category`      TEXT NOT NULL
);

CREATE TABLE `Game` (
    `id`                INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `name`              TEXT NOT NULL,
    `number_of_players` INTEGER NOT NULL,
    `category_id`       INTEGER NOT NULL,
    FOREIGN KEY(`category_id`) REFERENCES `Category`(`id`)
);

CREATE TABLE `GameReview` (
    `id`        INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `review`    BOOLEAN NOT NULL,
    `comment`   TEXT NOT NULL,
    `game_id`   INTEGER NOT NULL,
    FOREIGN KEY(`game_id`) REFERENCES `Game`(`id`)
);


INSERT INTO Category VALUES (null, 'Board Game');
INSERT INTO Game VALUES (null, 'Monopoly', 12, 1);
INSERT INTO GameReview VALUES (null, 1, 'Fun but takes way too long to play', 1);

select * from Category;
select * from Game;
select * from GameReview;