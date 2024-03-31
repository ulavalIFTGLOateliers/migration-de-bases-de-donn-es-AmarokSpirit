CREATE TABLE IF NOT EXISTS band (
    bandName VARCHAR(50) PRIMARY KEY,
    creation YEAR,
    genre VARCHAR(50)
);

INSERT INTO band (bandName, creation, genre) VALUES
    ('Crazy Duo', 2015, 'rock'),
    ('Luna',	2009, 'classical'),
    ('Mysterio',	2019, 'pop');


ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician
    CHANGE singerName musicianName VARCHAR(50);

ALTER TABLE musician
    ADD role VARCHAR(50),
    ADD bandName VARCHAR(50);
-- UPDATE musician
--     SET column1 = 'vocals',
--         column2 = 'guitar',
--         column3 = 'percussion',
--         column4 = 'piano',
--     WHERE musicianName IN ('Alina', 'Mysterio', 'Rainbow', 'Luna');
UPDATE musician
    SET role = 'vocals',
        bandName = 'Crazy Duo'
    WHERE musicianName = 'Alina';
UPDATE musician
    SET role = 'guitar',
        bandName = 'Mysterio'
    WHERE musicianName = 'Mysterio';
UPDATE musician
    SET role = 'percussion',
        bandName = 'Crazy Duo'
    WHERE musicianName = 'Rainbow';
UPDATE musician
    SET role = 'piano',
        bandName = 'Luna'
    WHERE musicianName = 'Luna';