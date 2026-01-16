<?php

    if(!isset($_GET['ime']) or empty($_GET['ime'])){
        die ("Niste unijeli ime!");
    }
    if(!isset($_GET['opis']) or empty($_GET['opis'])){
        die ("Niste unijeli opis!");
    }
    if(!isset($_GET['cijena']) or empty($_GET['cijena'])){
        die ("Niste unijeli cijena!");
    }
    if(!isset($_GET['slika']) or empty($_GET['slika'])){
        die ("Niste unijeli sliku!");
    }
    if(!isset($_GET['kolicina']) or empty($_GET['kolicina'])){
        die ("Niste unijeli kolicinu!");
    }

    require_once "baza.php";

    $ime = $_GET['ime'];
    $opis = $_GET['opis'];
    $cijena = $_GET['cijena'];
    $slika = $_GET['slika'];
    $kolicina = $_GET['kolicina'];

    $baza->query("INSERT INTO proizvodi (ime, opis, cijena, slika, kolicina) VALUE ('$ime', '$opis', '$cijena', '$slika', '$kolicina') ");

?>