document.querySelectorAll(".topic-btn").forEach((button) => {
	button.addEventListener("click", function () {
		const selectedTopic = this.getAttribute("data-topic");
		localStorage.setItem("selectedTopic", selectedTopic);
		window.location.href = "quiz.html";
	});
});

document.getElementById("goToHomeBtn").addEventListener("click", () => {
	window.location.href = "index.html";
});
