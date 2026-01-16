<?php

    if(!isset($_POST['unos']) or empty($_POST['unos'])){
        die ("Niste nista unijeli!");
    }

    require_once "baza.php";

    $unos = $_POST['unos'];

    $rezultat = $baza->query("SELECT * FROM proizvodi WHERE ime LIKE '%$unos%' or opis LIKE '%$unos%' ");

    $pretraga = $rezultat->fetch_all(MYSQLI_ASSOC);

    if($rezultat->num_rows >= 1){
        echo "Uspjesno smo pronasli ".$rezultat->num_rows." proizvoda";
    }
    else{
        echo "Nismo pronasli nijedan proizvod";
    }

?>