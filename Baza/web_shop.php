<?php
/**
 * Export to PHP Array plugin for PHPMyAdmin
 * @version 5.2.1
 */

/**
 * Database `web_shop`
 */

/* `web_shop`.`korisnici` */
$korisnici = array(
  array('id' => '1','email' => 'toma@gmail.com','sifra' => 'mojaSifraNikoJeNeZna'),
  array('id' => '2','email' => 'baba@udruzenjepenzionera.com','sifra' => 'sifraTajna'),
  array('id' => '3','email' => 'korisnik@gmail.com','sifra' => '12345678'),
  array('id' => '4','email' => 'novikorisnik@gmail.com','sifra' => '12341234'),
  array('id' => '5','email' => 'josjedankorisnik@gmail.com','sifra' => 'nekaSifra'),
  array('id' => '6','email' => 'pokusaj@gmail.com','sifra' => 'sifrasifra'),
  array('id' => '7','email' => 'nekimejl@gmail.com','sifra' => '$2y$10$lMJkS0jbWQiHAZgaJ3iJiOlR6cHTgljiaXPmye7yj5h86nhlAwN6y'),
  array('id' => '8','email' => 'nekinovimejl@gmail.com','sifra' => '$2y$10$Py4hmxlpXEPtig2KK2gP9Ouktr05/0BFgH5sWaqT6eK3L02kSK/X6')
);

/* `web_shop`.`narudzbine` */
$narudzbine = array(
  array('id' => '1','id_proizvoda' => '4','id_korisnika' => '2','cijena' => '19999.99','kolicina' => '10')
);

/* `web_shop`.`proizvodi` */
$proizvodi = array(
  array('id' => '1','ime' => 'iPhone 13','opis' => 'Dobar iphone','cijena' => '1199.99','slika' => 'iPhone13.jpg','kolicina' => '55'),
  array('id' => '2','ime' => 'iPhone 11','opis' => 'iPhone 11 kao nov, baba koristila za FB','cijena' => '989.99','slika' => 'iPhone11.jpg','kolicina' => '22'),
  array('id' => '3','ime' => 'iPhone 15','opis' => '100% pravi iPhone, samo niko ne zna da postoji','cijena' => '2499.99','slika' => 'nepostojeci.jpg','kolicina' => '1'),
  array('id' => '4','ime' => 'iPhone 14 ProMax','opis' => 'Ukraden nov iz Austrije','cijena' => '1999.99','slika' => 'iPhone13.jpg','kolicina' => '66'),
  array('id' => '5','ime' => 'iPhone 16 Pro','opis' => 'Dobar telefon nema sta nema packe','cijena' => '2350.00','slika' => 'iPhone16Pro.jpg','kolicina' => '2')
);
