var questionActuelle = 1;
var nbreQuestion = 2;
var score = 0;

document.getElementById("next-btn").addEventListener("click", function() {
    var questionActuelleDiv = document.getElementById("question" + questionActuelle);
    var prochaineQuestionDiv = document.getElementById("question" + (questionActuelle + 1));

    // Vérifie si une réponse a été sélectionnée pour la question actuelle
    var reponse = questionActuelleDiv.querySelector('input[name="question' + questionActuelle + '"]:checked');
    if (reponse !== null) {
        // Incrémente le score si la réponse est correcte
        if (questionActuelle === 1 && reponse.value === "Paris") {
            score++;
        }
        if (questionActuelle === 2 && reponse.value === "Madrid") {
            score++;
        }

        // Cache la question actuelle et affiche la question suivante
        questionActuelleDiv.style.display = "none";
        if (questionActuelle < nbreQuestion) {
            prochaineQuestionDiv.style.display = "block";
            questionActuelle++;
        } else {
            // Affiche le score si toutes les questions ont été répondues
            var resultatContainer = document.getElementById("result");
            resultatContainer.innerHTML = "Votre score est : " + score + "/" + nbreQuestion;
        }
    } else {
        alert("Veuillez sélectionner une réponse.");
    }
});

document.getElementById("submit-btn").addEventListener("click", function() {
    var questionActuelleDiv = document.getElementById("question" + questionActuelle);

    // Vérifie si une réponse a été sélectionnée pour la question actuelle
    var reponse = questionActuelleDiv.querySelector('input[name="question' + questionActuelle + '"]:checked');
    if (reponse !== null) {
        // Incrémente le score si la réponse est correcte
        if (questionActuelle === 1 && reponse.value === "Paris") {
            score++;
        }
        if (questionActuelle === 2 && reponse.value === "Madrid") {
            score++;
        }

        // Affiche le score
        var resultatContainer = document.getElementById("result");
        resultatContainer.innerHTML = "Votre score est : " + score + "/" + nbreQuestion;
    } else {
        alert("Veuillez sélectionner une réponse.");
    }
});
