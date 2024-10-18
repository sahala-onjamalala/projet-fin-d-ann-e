<?php //connexion à la base de données
$host = 'localhost';
$dbname = 'mlr3'; //Nom de la base de données
$user = 'root'; //Nom d'utilisateur de la base de données
$password = ''; //Mot de passe de la base de données

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMOSE, PDO:: ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connexion failed:" . $e->getMessage();
}
?>