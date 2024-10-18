<?php
// Connexion à la base de données
$servername = "localhost"; // Remplacez par votre serveur
$username = "root"; // Remplacez par votre utilisateur
$password = ""; // Remplacez par votre mot de passe
$dbname = "quiz"; // Remplacez par le nom de votre base de données

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Échec de la connexion : " . $conn->connect_error);
}

// Récupérer la valeur du formulaire
$valeur = $_POST['nom'];

// Préparer et exécuter la requête d'insertion
$sql = "INSERT INTO joueur (nom) VALUES (?)";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param("s", $valeur); // "s" signifie que c'est une chaîne de caractères
    $stmt->execute();

    // Vérifier si l'insertion a réussi
    if ($stmt->affected_rows > 0) {
        echo "Nouvelle valeur ajoutée avec succès.";
        // Optionnel : rediriger vers une autre page ou afficher un message
        // header("Location: success.html"); // Remplacez par la page de votre choix
        // exit();
    } else {
        echo "Erreur : " . $stmt->error;
    }

    // Fermer le statement
    $stmt->close();
} else {
    echo "Erreur lors de la préparation de la requête : " . $conn->error;
}

// Fermer la connexion
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/logo-quiz-en-forme-de-bulle-liquide-quiz-jeu-de-brainny-mot-vecteur-2eayyrr.jpg" type="image/x-icon">
    <link rel="stylesheet" href="CSS/Nom4.css">
    <title>Quiz</title>
    
</head>
<body>
    <main class="main">
        <a href="nbjoueurs.html">
            <button class="maincontainer__button-img--retour">
                <img src="assets/icons/retour.svg" alt="Retour">
            </button>
        </a>
        <div class="maincontainer">
            <div class="maincontainer__div">
                <div class="div__contenu">
                    <h2>Entrez votre nom</h2>
                    <form action="" method="POST">
                        <div class="haut__section">
                            <div class="haut__section__label">
                                <label for="joueur1">Joueur1:</label>
                                <input type="text" name="name1" class="input"><br>
                                <label for="joueur2">Joueur2:</label>
                                <input type="text" name="name2" class="input"><br>
                                <label for="joueur3">Joueur3:</label>
                                <input type="text" name="name3" class="input"><br>
                                <label for="joueur4">Joueur4:</label>
                                <input class="input" type="text" name="name4">
                            </div>
                        </div>
                        <div class="div__contenu__button">
                            <a href="Theme.php">
                                <input type="submit" value="Commencer" class="div__contenu__button__start" name="valider">
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <header class="header">
        <div class="header__img">
            <img src="assets/logo-quiz-en-forme-de-bulle-liquide-quiz-jeu-de-brainny-mot-vecteur-2eayyrr.jpg" alt="Logo" class="header__img--logo">
        </div>
        <nav class="header__nav">
            <div class="header__nav__menu">
                <a href="Mode.html">
                    <div class="menu__accueil">
                        <img src="assets/icons/accueil.svg" alt="Acceuil" class="header__nav__menu-accueil">
                    </div>
                </a>
                <div class="menu__classement">
                    <img src="assets/icons/classement.svg" alt="Classement" class="header__nav__menu-classement">
                </div>
            </div>
        </nav>
    </header>
    
</body>
</html>

