// Import des modules nécessaires
const express = require("express");
const cors = require("cors");
const questionsRoutes = require("./src/routes/questions");
const scoresRoutes = require("./src/routes/scores");

// Initialisation de l'application Express
const app = express();
const port = 3000;

// Middleware CORS
app.use(cors());

// Middleware pour parser les requêtes JSON
app.use(express.json());

app.use("/api/questions", questionsRoutes);
app.use("/api/scores", scoresRoutes);

// Démarrage du serveur
app.listen(port, () => {
	console.log(`Serveur Express démarré sur le port ${port}`);
});
