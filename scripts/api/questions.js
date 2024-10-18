const QUESTION_URL = "http://localhost:3000/api/questions";

// Service pour récupérer les questions par topic
function getQuestionsByTopic(topic) {
	return fetch(`${QUESTION_URL}/topic/${topic}`)
		.then((response) => response.json())
		.catch((error) => {
			console.error("Erreur lors de la récupération des questions :", error);
			return [];
		});
}
