# Vastaukset

## Sisällysluettelo

{% include toc.html html=content sanitize=true class="inline_toc" id="my_toc" h_min=2 h_max=3 %}

1. [Tehtävä 1](#tehtävä-1)
2. [Tehtävä 2](#tehtävä-2)

### Tehtävä 1

```SQL
SELECT nimi FROM Elokuvat
```

### Tehtävä 2

```SQL
SELECT nimi,vuosi FROM Elokuvat
```

### Tehtävä 3

```SQL
SELECT nimi FROM Elokuvat WHERE vuosi=1940;
```

### Tehtävä 4

```SQL
SELECT nimi FROM Elokuvat WHERE vuosi<1950;
```

### Tehtävä 5

```SQL
SELECT nimi FROM Elokuvat WHERE vuosi>=1940 AND vuosi<=1950;
```

### Tehtävä 6

```SQL
SELECT nimi FROM Elokuvat WHERE vuosi<1950 OR vuosi>1980;
```

### Tehtävä 7

```SQL
SELECT nimi FROM Elokuvat WHERE vuosi!=1940;
```

### Tehtävä 8

```SQL
SELECT nimi FROM Elokuvat ORDER BY nimi;
```

### Tehtävä 9

```SQL
SELECT nimi FROM Elokuvat ORDER BY nimi DESC;
```

### Tehtävä 10

```SQL
SELECT nimi,vuosi FROM Elokuvat ORDER BY vuosi DESC, nimi;
```

### Tehtävä 11

```SQL
SELECT DISTINCT etunimi FROM Nimet;
```

### Tehtävä 12

```SQL
SELECT DISTINCT etunimi,sukunimi FROM Nimet;
```

### Tehtävä 13

```SQL
SELECT COUNT(*) FROM Tyontekijat;
```

### Tehtävä 14

```SQL
SELECT COUNT(*) FROM Tyontekijat WHERE palkka>2000;
```

### Tehtävä 15

```SQL
SELECT SUM(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 17

```SQL
SELECT COUNT(DISTINCT yritys) FROM Tyontekijat;
```

### Tehtävä 18

```SQL
SELECT yritys, COUNT(*) FROM Tyontekijat GROUP BY yritys;
```

### Tehtävä 19

```SQL
SELECT yritys, MAX(palkka) FROM Tyontekijat GROUP BY yritys;
```

### Tehtävä 20

```SQL
SELECT yritys, MAX(palkka) FROM Tyontekijat WHERE palkka>=5000 GROUP BY yritys;
```

### Tehtävä 21

```SQL
SELECT
 Pelaajat.nimi, Tulokset.tulos
FROM
 Pelaajat,Tulokset
WHERE
 Pelaajat.id = Tulokset.pelaaja_id;
```

### Tehtävä 22

```SQL
SELECT
 Pelaajat.nimi, Tulokset.tulos
FROM
 Pelaajat, Tulokset
WHERE
 Pelaajat.id = Tulokset.pelaaja_id AND Pelaajat.nimi = "Uolevi";
```

### Tehtävä 23

```SQL
SELECT
 P.nimi, T.tulos
FROM
 Pelaajat AS P, Tulokset AS T
WHERE
 P.id = T.pelaaja_id AND T.tulos>250;

```

### Tehtävä 24

```SQL
SELECT
 P.nimi, T.tulos
FROM
 Pelaajat P, Tulokset T
WHERE
 P.id = T.pelaaja_id
ORDER BY
 T.tulos DESC, P.nimi;
```

### Tehtävä 25

```SQL
SELECT
 P.nimi, MAX(T.tulos)
FROM
 Pelaajat P, Tulokset T
WHERE
 P.id = T.pelaaja_id
GROUP BY
 P.nimi;
```

### Tehtävä 26

```SQL
SELECT
 P.nimi, COUNT(T.tulos)
FROM
 Pelaajat P, Tulokset T
WHERE
 P.id = T.pelaaja_id
GROUP BY
 P.nimi
```

### Tehtävä 27

```SQL
SELECT
 O.nimi, K.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id;
```

### Tehtävä 28

```SQL
SELECT
 K.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id AND O.nimi = 'Uolevi';
```

### Tehtävä 29

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 16

```SQL
SELECT MAX(palkka) FROM Tyontekijat;
```
