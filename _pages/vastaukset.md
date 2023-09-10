---
title: Vastaukset
author: jtnorr
date: 2023-09-08
category: tikape
layout: post
---

### Tehtävä 1

```  sql
SELECT nimi FROM Elokuvat
```

### Tehtävä 2

```  sql
SELECT nimi,vuosi FROM Elokuvat
```

### Tehtävä 3

```  sql
SELECT nimi FROM Elokuvat WHERE vuosi=1940;
```

### Tehtävä 4

``` sql
SELECT nimi FROM Elokuvat WHERE vuosi<1950;
```

### Tehtävä 5

``` sql
SELECT nimi FROM Elokuvat WHERE vuosi>=1940 AND vuosi<=1950;
```

### Tehtävä 6

``` sql
SELECT nimi FROM Elokuvat WHERE vuosi<1950 OR vuosi>1980;
```

### Tehtävä 7

``` sql
SELECT nimi FROM Elokuvat WHERE vuosi!=1940;
```

### Tehtävä 8

``` sql
SELECT nimi FROM Elokuvat ORDER BY nimi;
```

### Tehtävä 9

``` sql
SELECT nimi FROM Elokuvat ORDER BY nimi DESC;
```

### Tehtävä 10

``` sql
SELECT nimi,vuosi FROM Elokuvat ORDER BY vuosi DESC, nimi;
```

### Tehtävä 11

```  sql
SELECT DISTINCT etunimi FROM Nimet;
```

### Tehtävä 12

``` sql
SELECT DISTINCT etunimi,sukunimi FROM Nimet;
```

### Tehtävä 13

``` sql
SELECT COUNT(*) FROM Tyontekijat;
```

### Tehtävä 14

``` sql
SELECT COUNT(*) FROM Tyontekijat WHERE palkka>2000;
```

### Tehtävä 15

``` sql
SELECT SUM(palkka) FROM Tyontekijat;
```

### Tehtävä 16

``` sql
SELECT MAX(palkka) FROM Tyontekijat;
```

### Tehtävä 17

``` sql
SELECT COUNT(DISTINCT yritys) FROM Tyontekijat;
```

### Tehtävä 18

``` sql
SELECT yritys, COUNT(*) FROM Tyontekijat GROUP BY yritys;
```

### Tehtävä 19

``` sql
SELECT yritys, MAX(palkka) FROM Tyontekijat GROUP BY yritys;
```

### Tehtävä 20

``` sql
SELECT yritys, MAX(palkka) FROM Tyontekijat WHERE palkka>=5000 GROUP BY yritys;
```

### Tehtävä 21

``` sql
SELECT
 Pelaajat.nimi, Tulokset.tulos
FROM
 Pelaajat,Tulokset
WHERE
 Pelaajat.id = Tulokset.pelaaja_id;
```

### Tehtävä 22

``` sql
SELECT
 Pelaajat.nimi, Tulokset.tulos
FROM
 Pelaajat, Tulokset
WHERE
 Pelaajat.id = Tulokset.pelaaja_id AND Pelaajat.nimi = "Uolevi";
```

### Tehtävä 23

``` sql
SELECT
 P.nimi, T.tulos
FROM
 Pelaajat AS P, Tulokset AS T
WHERE
 P.id = T.pelaaja_id AND T.tulos>250;

```

### Tehtävä 24

``` sql
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

``` sql
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

``` sql
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

``` sql
SELECT
 O.nimi, K.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id;
```

### Tehtävä 28

``` sql
SELECT
 K.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id AND O.nimi = 'Uolevi';
```

### Tehtävä 29

``` sql
SELECT
 O.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id AND K.id = 1;
```

### Tehtävä 30

``` sql
SELECT
 O.nimi, K.nimi, S.arvosana
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id AND S.arvosana >= 4;
```

### Tehtävä 31

``` sql
SELECT
 O.nimi, COUNT(S.opiskelija_id)
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id
GROUP BY
 O.nimi;
```

### Tehtävä 32

``` sql
SELECT
 O.nimi, MAX(S.arvosana)
FROM
 Opiskelijat O, Kurssit K, Suoritukset S
WHERE
 O.id = S.opiskelija_id AND K.id = S.kurssi_id
GROUP BY
 O.nimi;
```

### Tehtävä 33

``` sql
SELECT
 A.nimi, B.nimi
FROM
 Kaupungit A, Kaupungit B, Lennot L
WHERE
 A.id = L.mista_id AND B.id = L.minne_id;
```

### Tehtävä 34

``` sql
SELECT
 K.nimi
FROM
 Kaupungit K, Lennot L
WHERE
K.id = L.minne_id AND L.mista_id = 1;
```

### Tehtävä 35

``` sql
SELECT
    P.nimi, COUNT(T.pelaaja_id)
FROM
    Pelaajat P
LEFT JOIN
    Tulokset T ON P.id = T.pelaaja_id
GROUP BY
    P.nimi;
```

### Tehtävä 36

``` sql
SELECT
 O.nimi, COUNT(S.opiskelija_id)
FROM
 Opiskelijat O
LEFT JOIN
 Suoritukset S ON O.id = S.opiskelija_id
GROUP BY
 O.nimi;
```

### Tehtävä 37

``` sql
SELECT
 K.nimi, COUNT(S.kurssi_id)
FROM
 Kurssit K
LEFT JOIN
 Suoritukset S ON K.id = S.kurssi_id
GROUP BY
 K.id;
```

### Tehtävä 38

```  sql
SELECT
 K.nimi
FROM
 Kurssit K, Suoritukset S
WHERE
 K.id = S.kurssi_id
GROUP BY
 K.nimi;
```

### Tehtävä 39

```  sql
SELECT
 K.nimi
FROM
 Kurssit K
LEFT JOIN
 Suoritukset S ON S.kurssi_id = K.id
WHERE
 S.kurssi_id IS NULL;
```

### Tehtävä 40

``` sql
SELECT
  K.nimi, COUNT(L.mista_id)
FROM
  Kaupungit K
LEFT JOIN
  Lennot L ON K.id = L.mista_id
GROUP BY
  K.nimi;
```

### Tehtävä 41

``` sql
SELECT
 nimi, hinta * 2
FROM
 Tuotteet;
```

### Tehtävä 42

``` sql
SELECT
 nimi, hinta
FROM
 Tuotteet
WHERE
 hinta % 2 = 0;
```

### Tehtävä 43

``` sql
SELECT
 sana, LENGTH(sana)
FROM
 Sanat;
```

### Tehtävä 44

``` sql
SELECT
 sana
FROM
 Sanat
WHERE
 LENGTH(sana) < 6;
```

### Tehtävä 45

``` sql
SELECT
 sana
FROM
 Sanat
ORDER BY
 LENGTH(sana), sana;
```

### Tehtävä 46

``` sql
SELECT
 etunimi || ' ' || sukunimi
FROM
 Kayttajat;
```

### Tehtävä 47

``` sql
SELECT
 SUM(LENGTH(sana))
FROM
 Sanat;
```

### Tehtävä 48

``` sql
SELECT
 tuote, hinta*maara
FROM
 Tilaukset;
```

### Tehtävä 49

``` sql
SELECT
 SUM(hinta*maara)
FROM
 Tilaukset;
```

### Tehtävä 50

``` sql
SELECT
 nimi
FROM
 Elokuvat
WHERE
 (vuosi % 4 = 0 AND vuosi % 100 != 0) OR vuosi % 400 = 0;
```

### Tehtävä 51

``` sql
SELECT
 nimi
FROM
 Tuotteet
WHERE
 hinta = (SELECT MIN(hinta) FROM Tuotteet);
```

### Tehtävä 52

``` sql
SELECT
 nimi
FROM
 Tuotteet
WHERE
 hinta <= (SELECT MIN(hinta) * 2 FROM Tuotteet);
```

### Tehtävä 53

``` sql
SELECT
 nimi
FROM
 Tuotteet
GROUP BY
 hinta
HAVING
 COUNT(hinta) = 1;
```

### Tehtävä 54

``` sql
SELECT
 sana
FROM
 Sanat
ORDER BY
 sana
LIMIT
 1;
```

**TAI**

``` sql
SELECT MIN(sana) FROM Sanat;
```

### Tehtävä 55

``` sql
SELECT
 sana
FROM
 Sanat
ORDER BY
 sana
LIMIT
 1
OFFSET
 1
```

### Tehtävä 56

``` sql
SELECT
 sana
FROM
 Sanat
ORDER BY
 sana ASC
LIMIT 100000000 OFFSET 1; -- teoreettisesti riittävän iso numero, voidaan myös kasvattaa tarvittaessa
```

**TAI**

``` sql
SELECT sana
FROM Sanat
ORDER BY sana
LIMIT (SELECT COUNT(*) - 1 FROM Sanat)
OFFSET 1;
```

### Tehtävä 57

``` sql
SELECT
 sana
FROM
 Sanat
WHERE
 sana LIKE '%i%';
```

### Tehtävä 58

``` sql
SELECT
 sana
FROM
 Sanat
WHERE
 sana LIKE 'a%';
```

### Tehtävä 59

``` sql
SELECT
 sana
FROM
 Sanat
WHERE
 LENGTH(sana) = 5 AND sana LIKE '_p%';
```

### Tehtävä 60

``` sql
SELECT
 sana
FROM
 Sanat
WHERE
 sana LIKE '%a%a%' AND sana NOT LIKE '%a%a%a%';
```

### Tehtävä 61

``` sql

```

### Tehtävä 62

``` sql

```

### Tehtävä 63

``` sql

```

### Tehtävä 64

``` sql

```

### Tehtävä 65

``` sql

```

### Tehtävä 66

``` sql

```

### Tehtävä 67

``` sql

```

### Tehtävä 68

``` sql

```

### Tehtävä 69

``` sql

```

### Tehtävä 70

``` sql

```

### Tehtävä 71

``` sql

```

### Tehtävä 72

``` sql

```

### Tehtävä 73

``` sql

```

### Tehtävä 74

``` sql

```

### Tehtävä 75

``` sql

```

### Tehtävä 76

``` sql

```

### Tehtävä 77

``` sql

```

### Tehtävä 78

``` sql

```

### Tehtävä 79

``` sql

```

### Tehtävä 80

``` sql

```

### Tehtävä 81

``` sql

```

### Tehtävä 82

``` sql

```

### Tehtävä 83

``` sql

```

### Tehtävä 84

``` sql

```

### Tehtävä 85

``` sql

```

### Tehtävä 86

``` sql

```

### Tehtävä 87

``` sql

```

### Tehtävä 88

``` sql

```

### Tehtävä 89

``` sql

```

### Tehtävä 90

``` sql

```

### Tehtävä 91

``` sql

```

### Tehtävä 92

``` sql

```

### Tehtävä 93

``` sql

```

### Tehtävä 94

``` sql

```

### Tehtävä 95

``` sql

```

### Tehtävä 96

``` sql

```

### Tehtävä 97

``` sql

```

### Tehtävä 98

``` sql

```

### Tehtävä 99

``` sql

```

### Tehtävä 100

``` sql

```
