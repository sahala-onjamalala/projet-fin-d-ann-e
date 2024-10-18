// Formater la date
function formatDate(isoDateString) {
	const date = new Date(isoDateString);

	const day = String(date.getDate()).padStart(2, "0");
	const month = String(date.getMonth() + 1).padStart(2, "0"); // Les mois commencent à 0
	const year = date.getFullYear();

	return `${day}-${month}-${year}`;
}

// Charger les scores et les afficher dans le tableau
document.addEventListener("DOMContentLoaded", async () => {
	const scores = await getAllScores();

	if (scores.length === 0) {
		alert("Aucun score trouvé.");
		return;
	}

	const rankingBody = document.getElementById("ranking-body");
	rankingBody.innerHTML = ""; // Vider le tableau avant d'ajouter les scores

	// Générer les lignes du tableau
	scores.forEach((score, index) => {
		const row = document.createElement("tr");
		row.innerHTML = `
            <td>${index + 1}</td>
            <td>${score.user_name}</td>
            <td>${score.score}</td>
			<td>${formatDate(score.date)}</td>
        `;
		rankingBody.appendChild(row);
	});
});

// Bouton pour revenir aux thèmes
document.getElementById("backToTopicsBtn").addEventListener("click", () => {
	window.location.href = "topics.html";
});

document.getElementById("backToHomeBtn").addEventListener("click", () => {
	window.location.href = "index.html";
});
