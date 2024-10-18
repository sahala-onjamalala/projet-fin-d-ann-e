const express = require("express");
const router = express.Router();
const questionsController = require("../controllers/question-controller");

router.get("/topic/:topic", questionsController.getQuestionsByTopic);

module.exports = router;
