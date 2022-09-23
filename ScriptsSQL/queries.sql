-- Queries Google Drives

-- Q# - METHODE - nom requete - descriptif
SELECT * FROM person NATURAL JOIN personemployee NATURAL JOIN employee WHERE personid = '3';

-- Q# - METHODE - nom requete - descriptif
CREATE OR REPLACE FUNCTION getPersonOrEmployee(pID INTEGER) RETURNS TABLE (employeeid INTEGER, personid INTEGER, email email, firstname VARCHAR, lastname VARCHAR, logourl VARCHAR, gender gender) AS $$
BEGIN
    IF EXISTS (SELECT * FROM person NATURAL JOIN personemployee WHERE personid = pID) THEN
        RETURN QUERY
        SELECT * FROM person NATURAL JOIN personemployee NATURAL JOIN employee WHERE personid = pID;
    ELSE
        RETURN QUERY
        SELECT 'none', personid, email, firstname, lastname, logourl, gender FROM person WHERE personid = pID;
    END IF;
END
$$ LANGUAGE plpgsql;

SELECT * FROM getPersonOrEmployee(2);
