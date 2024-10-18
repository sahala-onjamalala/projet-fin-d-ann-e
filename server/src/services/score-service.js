const pgPool = require("../db").pgPool;
// const mySQLPool = require("../db").mysqlConnection;

// Service pour ajouter un score
const addScore = async (user_name, score) => {
	try {
		//Requête façon Mysql
		// const query = `INSERT INTO Scores (user_name, score, date) VALUES ('${user_name}', ${score}, '${new Date()}')`;
		const query =
			"INSERT INTO Scores (user_name, score, date) VALUES ($1, $2, $3) RETURNING *";
		const result = await pgPool.query(query, [user_name, score, new Date()]);
		//  const result = await mySQLPool.query(query);
		return result.rows[0]; // Retourner le score ajouté
	} catch (error) {
		throw new Error("Erreur lors de l'ajout du score");
	}
};

// Service pour vérifier l'existence d'un user_name
const findScoreByUserName = async (user_name) => {
	try {
		//Requête façon Mysql
		// const query = `SELECT * FROM Scores WHERE user_name = '${user_name}'`;
		const query = "SELECT * FROM Scores WHERE user_name = $1";
		// const result = await mySQLPool.query(query);
		const result = await pgPool.query(query, [user_name]);
		return result.rows[0]; // Retourner les détails du score s'il existe
	} catch (error) {
		throw new Error("Erreur lors de la vérification du nom d'utilisateur");
	}
};

// Service pour mettre à jour le score existant (ajouter au score actuel)
const updateScore = async (user_name, score) => {
	try {
		//Requête façon Mysql
		// const query = `UPDATE Scores SET score = score + ${score} WHERE user_name = '${user_name}'`;
		const query =
			"UPDATE Scores SET score = score + $1 WHERE user_name = $2 RETURNING *";
		const result = await pgPool.query(query, [score, user_name]);
		// const result = await mySQLPool.query(query);
		return result.rows[0]; // Retourner les nouvelles données du score
	} catch (error) {
		throw new Error("Erreur lors de la mise à jour du score");
	}
};

// Service pour obtenir tous les scores
const getAllScores = async () => {
	try {
		//Requête façon Mysql
		// const query = "SELECT * FROM Scores ORDER BY score DESC"; // Trier les scores par ordre décroissant
		const query = "SELECT * FROM Scores ORDER BY score DESC"; // Trier les scores par ordre décroissant
		const result = await pgPool.query(query);
		// const result = await mySQLPool.query(query);
		return result.rows; // Retourner tous les scores
	} catch (error) {
		throw new Error("Erreur lors de la récupération des scores");
	}
};

module.exports = {
	addScore,
	findScoreByUserName,
	updateScore,
	getAllScores,
};
