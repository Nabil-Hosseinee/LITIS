var actQuestion = 1;
var nbreQuestion = 10;
var score = 0;

document.getElementById("next-btn").addEventListener("click", function() {
    var actQuestionDiv = document.getElementById("question" + actQuestion);
    var proQuestionDiv = document.getElementById("question" + (actQuestion + 1));

    // Vérifie si une réponse a été sélectionnée pour la question actuelle
    var reponse = actQuestionDiv.querySelector('input[name="question' + actQuestion + '"]:checked');
    if (reponse !== null) {
        // Incrémente le score si la réponse est correcte
        if (resultatQuestion(actQuestion, reponse.value)) {
            score++;
        }

        // Cache la question actuelle et affiche la question suivante
        actQuestionDiv.style.display = "none";
        if (actQuestion < nbreQuestion) {
            proQuestionDiv.style.display = "block";
            actQuestion++;
            if (actQuestion === nbreQuestion) {
                document.getElementById("next-btn").style.display = "none";
                document.getElementById("submit-btn").style.display = "block";
            }
        }
    } else {
        alert("Veuillez sélectionner une réponse.");
    }
});

document.getElementById("submit-btn").addEventListener("click", function() {
    var actQuestionDiv = document.getElementById("question" + actQuestion);

    // Vérifie si une réponse a été sélectionnée pour la question actuelle
    var reponse = actQuestionDiv.querySelector('input[name="question' + actQuestion + '"]:checked');
    if (reponse !== null) {
        // Incrémente le score si la réponse est correcte
        if (resultatQuestion(actQuestion, reponse.value)) {
            score++;
        }

        // Affiche le score
        var resultContainer = document.getElementById("result");
        resultContainer.innerHTML = "Votre score est : " + score + "/" + nbreQuestion;
        document.getElementById("submit-btn").style.display = "none";

        // Vérifie si le score est de 10 et affiche un message de félicitations
        if (score === 10) {
            resultContainer.innerHTML += "<br><br>Bravo, vous avez eu toutes les bonnes réponses !";
            // Vous pouvez ajouter du code ici pour afficher une image si vous le souhaitez
        }
    } else {
        alert("Veuillez sélectionner une réponse.");
    }
});

function resultatQuestion(numeroQuestion, userReponse) {
    // Fonction pour vérifier si la réponse de l'utilisateur est correcte pour chaque question
    switch(numeroQuestion) {
        case 1:
            return userReponse === "a";
        case 2:
            return userReponse === "a";
        case 3:
            return userReponse === "b";
        case 4:
            return userReponse === "c";
        case 5:
            return userReponse === "b";
        case 6:
            return userReponse === "a";
        case 7:
            return userReponse === "d";
        case 8:
            return userReponse === "b";
        case 9:
            return userReponse === "c";
        case 10:
            return userReponse === "b";
        default:
            return false;
    }
}
