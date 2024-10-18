document.addEventListener("DOMContentLoaded", () => {
	const userName = localStorage.getItem("user_name");
	const score = localStorage.getItem("score");

	const resultsContainer = document.getElementById("results-container");

	if (!userName || !score) {
		resultsContainer.innerHTML =
			"<p>Jouez d'abord pour pouvoir voir vos résultats.</p>";
	} else {
		resultsContainer.innerHTML = `<p>Nom: ${userName}</p><p>Score: ${score}/100</p>`;
	}

	document.getElementById("backToTopicsBtn").addEventListener("click", () => {
		localStorage.removeItem("user_name");
		localStorage.removeItem("score");
		window.location.href = "topics.html";
	});

	document.getElementById("goToRankingBtn").addEventListener("click", () => {
		localStorage.removeItem("user_name");
		localStorage.removeItem("score");
		window.location.href = "ranking.html";
	});
});
