let currentQuestionIndex = 0;
let score = 0;
let questions = [];

document.getElementById("startQuizBtn").addEventListener("click", async () => {
	const userName = document.getElementById("user_name").value;
	if (!userName) {
		alert("Veuillez entrer votre nom");
		return;
	}

	localStorage.setItem("user_name", userName);
	const selectedTopic = localStorage.getItem("selectedTopic");
	questions = await getQuestionsByTopic(selectedTopic);
	console.log(questions);

	if (questions.length === 0) {
		alert("Aucune question trouvée pour ce sujet");
		return;
	}

	document.getElementById("quiz-container").style.display = "none";
	document.getElementById("question-container").style.display = "block";
	showQuestion();
});

function showQuestion() {
	if (currentQuestionIndex >= 10) {
		document.getElementById("question-container").innerHTML =
			`<button class="btn-secondary" id="showResultsBtn">Afficher votre résultat</button>`;
		document
			.getElementById("showResultsBtn")
			.addEventListener("click", async () => {
				const userName = localStorage.getItem("user_name");
				localStorage.setItem("score", score);

				// Utiliser createOrUpdateScore pour ajouter ou mettre à jour le score
				await createOrUpdateScore(userName, score);
				window.location.href = "results.html";
			});
		return;
	}

	const question = questions[currentQuestionIndex];
	document.getElementById("question-text").innerText = question.question_text;
	const options = [
		question.correct_answer,
		question.wrong_answer1,
		question.wrong_answer2,
		question.wrong_answer3,
	].sort(() => Math.random() - 0.5);

	const optionsContainer = document.getElementById("options");
	optionsContainer.innerHTML = "";
	options.forEach((option) => {
		const btn = document.createElement("button");
		btn.innerText = option;
		btn.classList.add("option-btn");
		btn.addEventListener("click", () => {
			if (option === question.correct_answer) {
				score += 10;
			}
			currentQuestionIndex++;
			showQuestion();
		});
		optionsContainer.appendChild(btn);
	});
}
