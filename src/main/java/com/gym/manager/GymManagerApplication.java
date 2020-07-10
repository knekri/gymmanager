package com.gym.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class GymManagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(GymManagerApplication.class, args);
    }

}

/*
* TODO
* - lehet-e startup migráció konfig és plugin config egyszerre? --> nem ajánlatos
* - ha visszaállok korábbi commitra és úgy kapcsolódok a db-re vajon mit észlel a flyway?
*   megmarad-e, felismer-e az eltérést, (auto)rollback? --> kitöröltem a legutolsó migration sql fájlt és
*           ettől még uptodate az adatbázis (hiába van előrébb a db, az sql-es fájlok azok nem tudják azt)
*
* - lehet-e INSERT INTO SQL query (integration test-hez jól jöhet, ha inicializálni kell) --> igen lehet
* - hogy érdemes elindulni meglévő adatbázis esetén?
*   × adatokat kimigrálni belőle külön?
*   × vagy csak simán baseline és onnan folytatni?
*   × baseline-t app indításkor hogy lehet lerakni?
*
*/