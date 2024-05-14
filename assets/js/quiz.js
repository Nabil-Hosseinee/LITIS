// Définition des variables pour le score et le nombre total de questions
var score = 0;
var totalQuestions = 10;
var questionsPosees = 0;
var currentQuestion = 1; // Ajout de l'initialisation de currentQuestion


// Déclaration de la variable scoreContainer en tant que variable globale
var scoreContainer = document.getElementById("score-container");


// Tableau des réponses correctes pour chaque question
var correctAnswers = {
    question1: "a",
    question2: "a",
    question3: "b",
    question4: "c",
    question5: "c",
    question6: "a",
    question7: "a",
    question8: "d",
    question9: "b",
    question10: "b"
};


// Fonction pour mettre à jour le score affiché sur la page
function updateScoreContainer() {
    scoreContainer.textContent = "Votre score est : " + score + "/" + questionsPosees;
}


function updateAvanceeContainer() {
    var avanceeContainer = document.getElementById("avancee");
    avanceeContainer.textContent = "Question " + currentQuestion + "/" + totalQuestions;
}


// Mettre à jour le score affiché au chargement de la page
updateAvanceeContainer();
updateScoreContainer();


// Gestionnaire d'événement pour le bouton "Suivant"
document.getElementById("next-btn").addEventListener("click", function() {
    var currentQuestionDiv = document.getElementById("question" + currentQuestion);
    var nextQuestionDiv = document.getElementById("question" + (currentQuestion + 1));


    var answer = currentQuestionDiv.querySelector('input[name="question' + currentQuestion + '"]:checked');
    if (answer !== null) {
        if (answer.value === correctAnswers["question" + currentQuestion]) {
            score++;
        }


        currentQuestionDiv.style.display = "none";
        if (currentQuestion < totalQuestions) {
            nextQuestionDiv.style.display = "block";
            currentQuestion++;
            questionsPosees++;
        } else {
            var resultContainer = document.getElementById("result");
            resultContainer.innerHTML = "Votre score est : " + score + "/" + totalQuestions;
            scoreContainer.style.display = "none";
            document.getElementById("next-btn").style.display = "none";
        }


        // Mettre à jour le score affiché sur la page après chaque question
        updateScoreContainer();
        updateAvanceeContainer();
    } else {
        alert("Veuillez sélectionner une réponse.");
    }
});




// Gestionnaire d'événement pour le bouton "Soumettre"
// document.getElementById("submit-btn").addEventListener("click", function() {
//     var currentQuestionDiv = document.getElementById("question" + currentQuestion);


//     var answer = currentQuestionDiv.querySelector('input[name="question' + currentQuestion + '"]:checked');
//     if (answer !== null) {
//         if (answer.value === correctAnswers["question" + currentQuestion]) {
//             score++;
//         }


//         var resultContainer = document.getElementById("result");
//         resultContainer.innerHTML = "Votre score est : " + score + "/" + totalQuestions;


//         // Mettre à jour le score affiché sur la page après la soumission
//         updateScoreContainer();
//         updateAvanceeContainer();
//     } else {
//         alert("Veuillez sélectionner une réponse.");
//     }
// });
