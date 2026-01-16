<?php
    if(!isset($_GET['email']) or empty($_GET['email'])){
        die ("Niste unijeli email!");
    }

    require_once "baza.php";

    $email_pretraga = $_GET['email'];

    $rezultat = $baza->query(" SELECT * FROM korisnici WHERE email LIKE '%toma%' ");

    if($rezultat->num_rows >= 1){
        echo "Nasli smo ".$rezultat->num_rows." korisnika sa ovom email adresom";
    }
    else{
        echo "Nismo pronasli korisnika.";
    }

?>