const questionsService = require("../services/question-service");

const getQuestionsByTopic = async (req, res) => {
	const { topic } = req.params; // Récupérer le paramètre de l'URL
	try {
		const questions = await questionsService.getQuestionsByTopic(topic);
		console.log(questions);
		if (questions.length > 0) {
			res.status(200).json(questions); // Envoyer les questions en réponse JSON
		} else {
			res
				.status(404)
				.json({ message: `Aucune question trouvée pour le topic : ${topic}` });
		}
	} catch (error) {
		console.error(error.message);
		res.status(500).json({
			message: "Erreur serveur lors de la récupération des questions",
		});
	}
};

module.exports = {
	getQuestionsByTopic,
};
