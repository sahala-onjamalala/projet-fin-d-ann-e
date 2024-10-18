const { Pool } = require("pg");
// const mysql = require("mysql2");

// Configuration de la connexion à MySQL
// const mysqlConnection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'quiz'
// });

// Configuration de la connexion à PostgreSQL
const pgPool = new Pool({
	user: "root",
	host: "0.0.0.0",
	database: "quiz",
	password: "zerovalo",
	port: 5432,
});

// Test de la connexion à MySQL
//  mysqlConnection.connect(function (err) {
//     if (err) throw err
//     console.log("Connexion réussie à MySQL!")
//   })

// Test de la connexion à PostgreSQL
pgPool
	.connect()
	.then(() => {
		console.log("Connexion réussie à PostgreSQL");
	})
	.catch((err) => {
		console.error("Erreur de connexion à PostgreSQL:", err);
	});

exports.pgPool = pgPool;
// exports.mysqlConnection = mysqlConnection;
