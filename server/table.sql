CREATE TABLE Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    topic TEXT NOT NULL,
    question_text TEXT NOT NULL,
    correct_answer TEXT NOT NULL,
    wrong_answer1 TEXT NOT NULL,
    wrong_answer2 TEXT NOT NULL,
    wrong_answer3 TEXT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    score INT NOT NULL CHECK (score >= 0),
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;