<?php
    $baza = mysqli_connect("localhost", "root", "", "web_shop");

    if(!isset($_POST['unos_email']) or empty($_POST['unos_email'])){
        die ("Niste unijeli email!");
    }
    if(!isset($_POST['unos_sifra']) or empty($_POST['unos_sifra'])){
        die ("Niste unijeli sifru!");
    }

    $email = $_POST['unos_email'];
    $sifra = password_hash($_POST['unos_sifra'], PASSWORD_BCRYPT);

    $rezultat = $baza->query("SELECT * FROM korisnici WHERE email = '$email' ");
    if($rezultat->num_rows >= 1){
        die ("Email koji ste unijeli vec postoji,");
    } else{
        echo "Uspjesno ste se registrovali.";
        $baza -> query("INSERT INTO korisnici (email, sifra) VALUES ('$email', '$sifra') ");
    }
    
?>
