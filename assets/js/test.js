const quizContainer = document.getElementById('quiz');
const resultsContainer = document.getElementById('results');
const submitButton = document.getElementById('submit');
const nextButton = document.getElementById('next');
const questionCounter = document.getElementById('question-counter');
const scoreContainer = document.getElementById('score');

const myQuestions = [
    {
        question: "Quelles sont les étapes pour effectuer une démarche en ligne selon le contenu fourni ?",
        answers: {
            a: "Identification de la démarche",
            b: "Accès à la page démarche",
            c: "Préparation des informations",
            d: "Début de la démarche"
        },
        correctAnswer: "a"
    },
    {
        question: "Comment accéder à la page de démarche après avoir identifié le service souhaité ?",
        answers: {
            a: "Cliquer sur 'Commencer la démarche'",
            b: "Télécharger les documents nécessaires",
            c: "Cliquer sur 'Aide en ligne'",
            d: "Contacter le service clientèle"
        },
        correctAnswer: "a"
    },
    {
        question: "Quels sont les types d'informations et de documents que vous devez préparer avant de commencer une démarche en ligne ?",
        answers: {
            a: "Carte de crédit et mot de passe",
            b: "Pièces d'identité, relevés bancaires, justificatifs de domicile",
            c: "Code de vérification par SMS",
            d: "Adresse e-mail et numéro de téléphone"
        },
        correctAnswer: "b"
    },
    {
        question: "Quelles sont les étapes pour remplir un formulaire en ligne de manière efficace ?",
        answers: {
            a: "Télécharger les documents requis",
            b: "Cliquer sur 'Suivant' ou 'Créer un compte'",
            c: "Vérifier les informations avant de soumettre",
            d: "Utiliser le format incorrect pour les données"
        },
        correctAnswer: "c"
    },
    {
        question: "Comment utiliseriez-vous le gestionnaire de fichiers pour trouver un document spécifique sur votre ordinateur ?",
        answers: {
            a: "Créer un nouveau dossier",
            b: "Sélectionner tous les fichiers",
            c: "Utiliser la fonction de recherche",
            d: "Copier et coller des fichiers"
        },
        correctAnswer: "c"
    },
    {
        question: "Quelles sont les étapes pour créer un dossier sur un Mac selon le contenu fourni ?",
        answers: {
            a: "Ouvrir le Gestionnaire de fichier, choisir l'emplacement, créer le dossier",
            b: "Ouvrir le Gestionnaire de fichiers, cliquer sur 'Nouveau dossier'",
            c: "Naviguer vers 'Téléchargements' et créer un dossier",
            d: "Copier un dossier existant et le renommer"
        },
        correctAnswer: "a"
    },
    {
        question: "Pouvez-vous décrire comment créer un dossier sur un système Windows ?",
        answers: {
            a: "Accéder à l'Explorateur de fichiers, choisir l'emplacement souhaité et créer le dossier",
            b: "Ouvrir le Finder, naviguer vers l'emplacement souhaité et créer le dossier",
            c: "Copier un fichier et le déplacer vers un nouvel emplacement",
            d: "Utiliser le bureau comme emplacement par défaut pour tous les dossiers"
        },
        correctAnswer: "a"
    },
    {
        question: "Quels sont les principaux paramètres à vérifier lors de la gestion des cookies dans votre navigateur web ?",
        answers: {
            a: "Taille de la police et couleur de fond",
            b: "Permissions de la caméra et du microphone",
            c: "Autorisation d'accès aux emplacements",
            d: "Préférences de confidentialité et de sécurité"
        },
        correctAnswer: "d"
    },
    {
        question: "Comment mettre à jour votre système d'exploitation Windows selon les instructions fournies ?",
        answers: {
            a: "Accéder aux paramètres du navigateur",
            b: "Vérifier les mises à jour dans 'Mise à jour et Sécurité'",
            c: "Cliquer sur 'Redémarrer' pour terminer l'installation",
            d: "Utiliser un outil de numérisation de QR code"
        },
        correctAnswer: "b"
    },
    {
        question: "Pouvez-vous m'expliquer comment scanner un QR code selon les étapes fournies ?",
        answers: {
            a: "Télécharger un document spécifique",
            b: "Utiliser l'application de scanner QR code",
            c: "Accéder à la page de démarche",
            d: "Créer un compte Google à partir de zéro"
        },
        correctAnswer: "b"
    }
];

let currentQuestionIndex = 0;
let numCorrect = 0;

function showQuestion() {
    const currentQuestion = myQuestions[currentQuestionIndex];
    const answers = [];

    for (let letter in currentQuestion.answers) {
        answers.push(
            `<label>
                <input type="radio" name="question" value="${letter}">
                <span></span>
                ${letter} :
                ${currentQuestion.answers[letter]}
            </label>`
        );
    }

    quizContainer.innerHTML = `
        <div class="question"> ${currentQuestion.question} </div>
        <div class="answers"> ${answers.join('')} </div>
    `;

    // Update question counter and score
    questionCounter.textContent = `Question ${currentQuestionIndex + 1} sur ${myQuestions.length}`;
    scoreContainer.textContent = `Score: ${numCorrect}/${currentQuestionIndex}`;

    submitButton.style.display = 'block';
    nextButton.style.display = 'none';
}

function checkAnswer() {
    const answerContainers = quizContainer.querySelectorAll('.answers label');
    const selector = `input[name=question]:checked`;
    const userAnswer = (quizContainer.querySelector(selector) || {}).value;

    // Check if the user answer is correct or not
    if (userAnswer === myQuestions[currentQuestionIndex].correctAnswer) {
        numCorrect++;
        const correctAnswerElement = quizContainer.querySelector(`input[value=${userAnswer}]`).parentElement;
        correctAnswerElement.classList.add('correct');
    } else {
        // Color the user answer red if incorrect
        if (userAnswer) {
            const incorrectAnswerElement = quizContainer.querySelector(`input[value=${userAnswer}]`).parentElement;
            incorrectAnswerElement.classList.add('incorrect');
        }
        // Color the correct answer green
        const correctAnswerElement = quizContainer.querySelector(`input[value=${myQuestions[currentQuestionIndex].correctAnswer}]`).parentElement;
        correctAnswerElement.classList.add('correct');
    }

    // Update score
    scoreContainer.textContent = `Score: ${numCorrect}/${currentQuestionIndex + 1}`;

    // Show the "Continue" button
    submitButton.style.display = 'none';
    nextButton.style.display = 'block';
}

function showNextQuestion() {
    currentQuestionIndex++;

    if (currentQuestionIndex < myQuestions.length) {
        showQuestion();
    } else {
        showResults();
    }
}

function showResults() {
    quizContainer.innerHTML = '';
    resultsContainer.innerHTML = `Vous avez ${numCorrect} bonnes réponses sur ${myQuestions.length}.`;

    // Add the class 'appear' to all SVGs with the class 'layer'
    const layers = document.querySelectorAll('.layer');
    layers.forEach(layer => {
        layer.classList.add('appear');
    });

    // Change the next button to a restart button
    nextButton.textContent = 'Recommencer';
    nextButton.removeEventListener('click', showNextQuestion);
    nextButton.addEventListener('click', restartQuiz);
    nextButton.style.display = 'block';
}

function restartQuiz() {
    // Remove the 'appear' class from all SVGs with the class 'layer'
    const layers = document.querySelectorAll('.layer');
    layers.forEach(layer => {
        layer.classList.remove('appear');
    });

    currentQuestionIndex = 0;
    numCorrect = 0;
    showQuestion();
    resultsContainer.innerHTML = '';
    nextButton.style.display = 'none';
    nextButton.textContent = 'Continuer';
    nextButton.removeEventListener('click', restartQuiz);
    nextButton.addEventListener('click', showNextQuestion);
}

showQuestion();

submitButton.addEventListener('click', checkAnswer);
nextButton.addEventListener('click', showNextQuestion);
