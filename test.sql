SELECT tunnus
FROM Kayttajat
WHERE tunnus NOT IN (
        SELECT A.tunnus
        FROM Kayttajat A,
            Kayttajat B,
            Oikeudet X,
            Oikeudet Y
        WHERE A.id = X.kayttaja_id
            AND B.id = Y.kayttaja_id
            AND X.ryhma_id = Y.ryhma_id
            AND B.tunnus = 'uolevi'
    );
SELECT nimi,
    hinta
FROM Tuotteet
ORDER BY hinta,
    nimi
LIMIT 1;