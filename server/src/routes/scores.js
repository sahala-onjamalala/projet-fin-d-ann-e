const express = require("express");
const router = express.Router();
const scoresController = require("../controllers/score-controller");

// Route pour ajouter un score
router.post("/", scoresController.createOrUpdateScore);

// Route pour obtenir tous les scores
router.get("/", scoresController.getAllScores);

module.exports = router;
