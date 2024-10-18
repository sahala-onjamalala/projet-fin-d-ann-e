const scoresService = require("../services/score-service");

// Contrôleur pour ajouter un score ou mettre à jour si l'utilisateur existe déjà
const createOrUpdateScore = async (req, res) => {
	const { user_name, score } = req.body; // Récupérer les données de la requête

	if (!user_name || score === undefined) {
		return res.status(400).json({ message: "user_name et score sont requis" });
	}

	try {
		// Vérifier si le user_name existe déjà dans la base de données
		const existingScore = await scoresService.findScoreByUserName(user_name);

		if (existingScore) {
			// Mettre à jour le score si l'utilisateur existe déjà
			const updatedScore = await scoresService.updateScore(user_name, score);
			return res.status(200).json(updatedScore); // Répondre avec le score mis à jour
		}
		// Ajouter un nouveau score si l'utilisateur n'existe pas
		const newScore = await scoresService.addScore(user_name, score);
		return res.status(201).json(newScore); // Répondre avec le score ajouté
	} catch (error) {
		console.error(error.message);
		res.status(500).json({
			message: "Erreur serveur lors de l'ajout ou de la mise à jour du score",
		});
	}
};

// Contrôleur pour obtenir tous les scores
const getAllScores = async (req, res) => {
	try {
		const scores = await scoresService.getAllScores();
		res.status(200).json(scores); // Répondre avec tous les scores
	} catch (error) {
		console.error(error.message);
		res
			.status(500)
			.json({ message: "Erreur serveur lors de la récupération des scores" });
	}
};

module.exports = {
	createOrUpdateScore,
	getAllScores,
};
