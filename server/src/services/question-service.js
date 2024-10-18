const pgPool = require("../db").pgPool;
// const mySQLPool = require("../db").mysqlConnection;

const getQuestionsByTopic = async (topic) => {
	try {
		const query = `SELECT * FROM questions WHERE topic = '${topic}';`;
		const result = await pgPool.query(query);
		// Resultat SQL façon MySQL
		// const result = await mySQLPool.query(query);
		return result.rows; // Retourner les lignes trouvées
	} catch (error) {
		throw new Error(
			"Erreur lors de la récupération des questions par topic",
			error,
		);
	}
};

module.exports = {
	getQuestionsByTopic,
};
