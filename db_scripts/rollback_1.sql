DROP TABLE IF EXISTS band;

ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer
    CHANGE musicianName singerName VARCHAR(50);
ALTER TABLE singer
    DROP COLUMN role,
    DROP COLUMN bandName;