const SCORE_URL = "http://localhost:3000/api/scores";

// Service pour ajouter un score
function createOrUpdateScore(user_name, score) {
	return fetch(SCORE_URL, {
		method: "POST",
		headers: {
			"Content-Type": "application/json",
		},
		body: JSON.stringify({ user_name, score }),
	})
		.then((response) => response.json())
		.catch((error) => {
			console.error(
				"Erreur lors de l'ajout ou de la mise à jour du score :",
				error,
			);
		});
}

// Service pour obtenir tous les scores
function getAllScores() {
	return fetch(SCORE_URL)
		.then((response) => response.json())
		.catch((error) => {
			console.error("Erreur lors de la récupération des scores :", error);
			return [];
		});
}
