/**
 * Normalize the database
 *
 * Create new tables and define their relationships based on the schema in `normalization.png`
 
DROP TABLE IF EXISTS gender;
CREATE TABLE gender
(
    id SERIAL PRIMARY KEY,
    name CHAR(1) NOT NULL
);

DROP TABLE IF EXISTS race;
CREATE TABLE race
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS category;
CREATE TABLE category
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS tolkien_character;
CREATE TABLE tolkien_character
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    gender_id SERIAL NOT NULL,
    race_id SERIAL NOT NULL,
    category_id SERIAL NOT NULL,
    CONSTRAINT fk_tolkien_character_gender_id FOREIGN KEY(gender_id) REFERENCES gender(id),
    CONSTRAINT fk_tolkien_character_race_id FOREIGN KEY(race_id) REFERENCES race(id),
    CONSTRAINT fk_tolkien_character_category_id FOREIGN KEY(category_id) REFERENCES category(id)
);

 */


/**
 * Populate the new tables
 *
 * Populate the new tables with data from the `middle_earth_character` table.
 * Use transaction(s).
 */


/**
 * Refactor the database
 *
 * Rename the `middle_earth_character` table to `deprecated_middle_earth_character`.
 * Create a view named `middle_earth_character` with the original structure of the data.
 * Run the query in the `app.pgsql` file and check the results.
 */


/**
 * Delete legacy data
 *
 * Delete the `deprecated_middle_earth_character` table.
 */
