//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelQuizram54Ref: ObservableObject {
    let typeOfGame: GameTypeQuizram54Ref
    
    let xczvbnmtyu = 64
    var lkjhgfdsa = "Swift Rules!"
    let poiuytrfg: Float = 1.618
    var qwertylop = true

    func mnbvcxzkl(num: Int) -> Int {
        return num * 3 + 7
    }

    func ploiuytre(text: String) -> String {
        return text.uppercased()
    }

    func xcvbnmplk(a: Int, b: Int) -> Bool {
        return a % b == 0
    }

    func qazwsxedc(range: Range<Int>) -> Int {
        return Int.random(in: range)
    }
    
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionQuizram54Ref]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionQuizram54Ref {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeQuizram54Ref) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionQuizram54Ref.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeQuizram54Ref {
    case oneP
    case withC
    case withF
}

struct QuestionQuizram54Ref {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionQuizram54Ref] = [
        QuestionQuizram54Ref(
            question: "What is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Mars", "Venus", "Earth"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Jupiter", "Venus", "Saturn"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "O2", "CO2", "H2"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal is known as the King of the Jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Lion", "Tiger", "Elephant", "Leopard"]
        ),
        QuestionQuizram54Ref(
            question: "Who wrote 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Mark Twain", "Jane Austen"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionQuizram54Ref(
            question: "Which gas do plants absorb for photosynthesis?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"]
        ),
        QuestionQuizram54Ref(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Lhotse"]
        ),
        QuestionQuizram54Ref(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Quartz", "Gold", "Iron"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "Rome", "Berlin", "Madrid"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is famous for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Uranus", "Neptune"]
        ),
        QuestionQuizram54Ref(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Leonardo da Vinci", "Vincent van Gogh", "Pablo Picasso", "Claude Monet"]
        ),
        QuestionQuizram54Ref(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Hydrogen", "Carbon", "Nitrogen"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Antarctic Desert"]
        ),
        QuestionQuizram54Ref(
            question: "Which U.S. state is known as the Sunshine State?",
            correctAnswer: "Florida",
            answerOptions: ["Florida", "California", "Texas", "Hawaii"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is home to the kangaroo?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "New Zealand", "South Africa", "India"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency used in Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Dollar", "Euro", "Won"]
        ),
        QuestionQuizram54Ref(
            question: "Which famous scientist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Marie Curie", "Nikola Tesla"]
        ),
        QuestionQuizram54Ref(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100",
            answerOptions: ["100", "90", "80", "120"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "Thailand", "South Korea"]
        ),
        QuestionQuizram54Ref(
            question: "What is the primary ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Cucumber", "Peas"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is called Earth's twin?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mars", "Jupiter", "Mercury"]
        ),
        QuestionQuizram54Ref(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Tibia", "Radius"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Fe", "Cu"]
        ),
        QuestionQuizram54Ref(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["299,792 km/s", "150,000 km/s", "1,080,000 km/s", "300,000 km/s"]
        ),
        QuestionQuizram54Ref(
            question: "Which country has the largest population in the world?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "United States", "Indonesia"]
        ),
        QuestionQuizram54Ref(
            question: "Who is the author of '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["George Orwell", "Aldous Huxley", "F. Scott Fitzgerald", "J.D. Salinger"]
        ),
        QuestionQuizram54Ref(
            question: "What is the main gas found in the Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Hydrogen"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is famous for inventing pasta?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "China", "France", "Greece"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "Elephant", "Giraffe", "Hippopotamus"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionQuizram54Ref(
            question: "Which is the highest-grossing film of all time?",
            correctAnswer: "Avatar",
            answerOptions: ["Avatar", "Titanic", "Avengers: Endgame", "Star Wars"]
        ),
        QuestionQuizram54Ref(
            question: "Which metal is most commonly used in batteries?",
            correctAnswer: "Lithium",
            answerOptions: ["Lithium", "Zinc", "Copper", "Iron"]
        ),
        QuestionQuizram54Ref(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "Liechtenstein", "San Marino"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Canberra", "Sydney", "Melbourne", "Brisbane"]
        ),
        QuestionQuizram54Ref(
            question: "What is the scientific name for the study of plants?",
            correctAnswer: "Botany",
            answerOptions: ["Botany", "Zoology", "Geology", "Ecology"]
        ),
        QuestionQuizram54Ref(
            question: "Which river is the longest in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Nile", "Amazon", "Yangtze", "Mississippi"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Pound Sterling", "Euro", "Dollar", "Yen"]
        ),
        QuestionQuizram54Ref(
            question: "What does the term 'CPU' stand for in computing?",
            correctAnswer: "Central Processing Unit",
            answerOptions: ["Central Processing Unit", "Computer Processing Unit", "Central Program Unit", "Core Processing Unit"]
        ),
        QuestionQuizram54Ref(
            question: "Which element has the highest atomic number?",
            correctAnswer: "Oganesson",
            answerOptions: ["Oganesson", "Uranium", "Plutonium", "Lead"]
        ),
        QuestionQuizram54Ref(
            question: "Which ancient civilization built the pyramids?",
            correctAnswer: "Egyptians",
            answerOptions: ["Egyptians", "Mayans", "Aztecs", "Romans"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest continent by area?",
            correctAnswer: "Asia",
            answerOptions: ["Asia", "Africa", "North America", "Europe"]
        ),
        QuestionQuizram54Ref(
            question: "Which chemical element is represented by the symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nitrogen", "Neon", "Nickel"]
        ),
        QuestionQuizram54Ref(
            question: "What is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Cell", "Atom", "Molecule", "Organism"]
        ),
        QuestionQuizram54Ref(
            question: "Who was the first person to walk on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "Michael Collins"]
        ),
        QuestionQuizram54Ref(
            question: "Which organ in the human body produces insulin?",
            correctAnswer: "Pancreas",
            answerOptions: ["Pancreas", "Liver", "Kidney", "Stomach"]
        ),
        QuestionQuizram54Ref(
            question: "Which two elements make up water?",
            correctAnswer: "Hydrogen and Oxygen",
            answerOptions: ["Hydrogen and Oxygen", "Hydrogen and Nitrogen", "Oxygen and Carbon", "Hydrogen and Carbon"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is furthest from the Sun?",
            correctAnswer: "Neptune",
            answerOptions: ["Neptune", "Uranus", "Saturn", "Jupiter"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is known for the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "Japan", "South Korea"]
        ),
        QuestionQuizram54Ref(
            question: "Which part of the cell is responsible for energy production?",
            correctAnswer: "Mitochondria",
            answerOptions: ["Mitochondria", "Nucleus", "Cytoplasm", "Ribosomes"]
        ),
        QuestionQuizram54Ref(
            question: "What is the national bird of the United States?",
            correctAnswer: "Bald Eagle",
            answerOptions: ["Bald Eagle", "Golden Eagle", "Sparrow", "Hawk"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the first artificial satellite?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Sputnik 1", "Voyager", "Explorer 1", "Apollo 11"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "In", "Io"]
        ),
        QuestionQuizram54Ref(
            question: "Which U.S. state has the nickname 'The Lone Star State'?",
            correctAnswer: "Texas",
            answerOptions: ["Texas", "Arizona", "Nevada", "California"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is known as the Morning Star?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mercury", "Mars", "Jupiter"]
        ),
        QuestionQuizram54Ref(
            question: "What is the process by which plants make their food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Transpiration", "Digestion"]
        ),
        QuestionQuizram54Ref(
            question: "Who discovered gravity after observing a falling apple?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Niels Bohr"]
        ),
        QuestionQuizram54Ref(
            question: "Which instrument is used to measure atmospheric pressure?",
            correctAnswer: "Barometer",
            answerOptions: ["Barometer", "Thermometer", "Anemometer", "Hygrometer"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Tokyo", "Osaka", "Kyoto", "Nagoya"]
        ),
        QuestionQuizram54Ref(
            question: "Which ocean is the deepest in the world?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionQuizram54Ref(
            question: "What is the main language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Portuguese", "Spanish", "French", "English"]
        ),
        QuestionQuizram54Ref(
            question: "Who painted 'The Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Claude Monet", "Leonardo da Vinci", "Pablo Picasso"]
        ),
        QuestionQuizram54Ref(
            question: "What is the square root of 64?",
            correctAnswer: "8",
            answerOptions: ["8", "6", "7", "9"]
        ),
        QuestionQuizram54Ref(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Horse", "Leopard"]
        ),
        QuestionQuizram54Ref(
            question: "Which continent is known as the 'Frozen Continent'?",
            correctAnswer: "Antarctica",
            answerOptions: ["Antarctica", "Arctic", "Europe", "Asia"]
        ),
        QuestionQuizram54Ref(
            question: "What is the hardest naturally occurring substance?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Quartz", "Granite", "Marble"]
        ),
        QuestionQuizram54Ref(
            question: "Which bird is known for its distinctive laugh-like call?",
            correctAnswer: "Kookaburra",
            answerOptions: ["Kookaburra", "Parrot", "Owl", "Eagle"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Cu", "Fe"]
        ),
        QuestionQuizram54Ref(
            question: "Which sport is known as 'The Beautiful Game'?",
            correctAnswer: "Football (Soccer)",
            answerOptions: ["Football (Soccer)", "Basketball", "Cricket", "Rugby"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Greenland", "Australia", "Madagascar", "Iceland"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency of Russia?",
            correctAnswer: "Ruble",
            answerOptions: ["Ruble", "Euro", "Dollar", "Yen"]
        ),
        QuestionQuizram54Ref(
            question: "Which sea creature has eight legs?",
            correctAnswer: "Octopus",
            answerOptions: ["Octopus", "Crab", "Starfish", "Squid"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital city of Egypt?",
            correctAnswer: "Cairo",
            answerOptions: ["Cairo", "Alexandria", "Luxor", "Giza"]
        ),
        QuestionQuizram54Ref(
            question: "Which element has the chemical symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nickel", "Neon", "Nitrogen"]
        ),
        QuestionQuizram54Ref(
            question: "Who developed the theory of evolution?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Charles Darwin", "Isaac Newton", "Albert Einstein", "Nikola Tesla"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Madrid", "Barcelona", "Seville", "Valencia"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Earth", "Mars"]
        ),
        QuestionQuizram54Ref(
            question: "Which gas makes up the majority of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionQuizram54Ref(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Nile", "Amazon", "Yangtze", "Mississippi"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest continent by population?",
            correctAnswer: "Asia",
            answerOptions: ["Asia", "Africa", "Europe", "North America"]
        ),
        QuestionQuizram54Ref(
            question: "Which is the largest animal on land?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "Giraffe", "Hippopotamus", "Rhinoceros"]
        ),
        QuestionQuizram54Ref(
            question: "What is the tallest building in the world?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Burj Khalifa", "Shanghai Tower", "Eiffel Tower", "Empire State Building"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Pb", "Fe"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is known for having the longest coastline?",
            correctAnswer: "Canada",
            answerOptions: ["Canada", "Australia", "Russia", "United States"]
        ),
        QuestionQuizram54Ref(
            question: "Which fruit is known as the 'King of Fruits'?",
            correctAnswer: "Durian",
            answerOptions: ["Durian", "Mango", "Pineapple", "Banana"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Won", "Ringgit", "Peso"]
        ),
        QuestionQuizram54Ref(
            question: "What is the longest running TV show?",
            correctAnswer: "The Simpsons",
            answerOptions: ["The Simpsons", "Friends", "The Office", "SpongeBob SquarePants"]
        ),
        QuestionQuizram54Ref(
            question: "Who was the first female Prime Minister of the UK?",
            correctAnswer: "Margaret Thatcher",
            answerOptions: ["Margaret Thatcher", "Theresa May", "Elizabeth II", "Mary I"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of India?",
            correctAnswer: "New Delhi",
            answerOptions: ["New Delhi", "Mumbai", "Kolkata", "Bangalore"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal is known to have the longest lifespan?",
            correctAnswer: "Bowhead Whale",
            answerOptions: ["Bowhead Whale", "Elephant", "Tortoise", "Shark"]
        ),
        QuestionQuizram54Ref(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Quartz", "Platinum"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the largest volcano in the solar system?",
            correctAnswer: "Olympus Mons",
            answerOptions: ["Olympus Mons", "Mount Everest", "Kilauea", "Mount Fuji"]
        ),
        QuestionQuizram54Ref(
            question: "Which U.S. state is known as the 'Golden State'?",
            correctAnswer: "California",
            answerOptions: ["California", "Florida", "Texas", "Hawaii"]
        ),
        QuestionQuizram54Ref(
            question: "Which is the largest country in the world by area?",
            correctAnswer: "Russia",
            answerOptions: ["Russia", "Canada", "United States", "China"]
        ),
        QuestionQuizram54Ref(
            question: "What is the main ingredient in traditional sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Rice", "Fish", "Seaweed", "Soy Sauce"]
        ),
        QuestionQuizram54Ref(
            question: "Who was the first man to travel into space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Yuri Gagarin", "Neil Armstrong", "Buzz Aldrin", "John Glenn"]
        ),
        QuestionQuizram54Ref(
            question: "What is the longest mountain range in the world?",
            correctAnswer: "Andes",
            answerOptions: ["Andes", "Himalayas", "Rockies", "Alps"]
        ),
        QuestionQuizram54Ref(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Tibia", "Radius"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the first computer programmer?",
            correctAnswer: "Ada Lovelace",
            answerOptions: ["Ada Lovelace", "Alan Turing", "Bill Gates", "Steve Jobs"]
        ),
        QuestionQuizram54Ref(
            question: "Which natural disaster is measured using the Richter scale?",
            correctAnswer: "Earthquakes",
            answerOptions: ["Earthquakes", "Tornadoes", "Hurricanes", "Volcanic Eruptions"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet has the most moons?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Mars", "Uranus"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital city of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Rome", "Milan", "Florence", "Venice"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the longest river in South America?",
            correctAnswer: "Amazon",
            answerOptions: ["Amazon", "Orinoco", "Parana", "São Francisco"]
        ),
        QuestionQuizram54Ref(
            question: "Which ocean is located to the east of the United States?",
            correctAnswer: "Atlantic Ocean",
            answerOptions: ["Atlantic Ocean", "Pacific Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is known for the Eiffel Tower?",
            correctAnswer: "France",
            answerOptions: ["France", "Italy", "Germany", "Spain"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency of China?",
            correctAnswer: "Yuan",
            answerOptions: ["Yuan", "Won", "Ringgit", "Rupee"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Sahara Desert", "Gobi Desert", "Kalahari Desert", "Arabian Desert"]
        ),
        QuestionQuizram54Ref(
            question: "What is the process by which plants release oxygen into the air?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Digestion", "Evaporation"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal is known as the 'King of the Jungle'?",
            correctAnswer: "Lion",
            answerOptions: ["Lion", "Tiger", "Elephant", "Giraffe"]
        ),
        QuestionQuizram54Ref(
            question: "Which famous scientist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Nikola Tesla"]
        ),
        QuestionQuizram54Ref(
            question: "What is the chemical symbol for the element potassium?",
            correctAnswer: "K",
            answerOptions: ["K", "P", "Na", "Ca"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest country in Africa by land area?",
            correctAnswer: "Algeria",
            answerOptions: ["Algeria", "Sudan", "Democratic Republic of Congo", "Libya"]
        ),
        QuestionQuizram54Ref(
            question: "Which element is most abundant in Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Iron", "Aluminum"]
        ),
        QuestionQuizram54Ref(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Oscar Wilde", "Charles Dickens", "Jane Austen"]
        ),
        QuestionQuizram54Ref(
            question: "What is the currency of the United States?",
            correctAnswer: "Dollar",
            answerOptions: ["Dollar", "Euro", "Pound", "Yen"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the fairy-tale princess who lost a glass slipper?",
            correctAnswer: "Cinderella",
            answerOptions: ["Cinderella", "Snow White", "Rapunzel", "Aurora"]
        ),
        QuestionQuizram54Ref(
            question: "What is the fastest fish in the world?",
            correctAnswer: "Black Marlin",
            answerOptions: ["Black Marlin", "Bluefin Tuna", "Great White Shark", "Sailfish"]
        ),
        QuestionQuizram54Ref(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Earth", "Neptune"]
        ),
        QuestionQuizram54Ref(
            question: "Which continent is the Sahara Desert located in?",
            correctAnswer: "Africa",
            answerOptions: ["Africa", "Asia", "Australia", "South America"]
        ),
        QuestionQuizram54Ref(
            question: "Which bird is known for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Parrot", "Crow", "Eagle", "Owl"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the first manned mission to land on the Moon?",
            correctAnswer: "Apollo 11",
            answerOptions: ["Apollo 11", "Gemini 8", "Luna 2", "Apollo 13"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Berlin", "Munich", "Hamburg", "Frankfurt"]
        ),
        QuestionQuizram54Ref(
            question: "What is the second-largest continent by area?",
            correctAnswer: "Africa",
            answerOptions: ["Africa", "Asia", "North America", "Europe"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is famous for inventing pizza?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "Greece", "United States", "France"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital city of Russia?",
            correctAnswer: "Moscow",
            answerOptions: ["Moscow", "Saint Petersburg", "Novosibirsk", "Kazan"]
        ),
        QuestionQuizram54Ref(
            question: "What is the world's most spoken language?",
            correctAnswer: "Mandarin Chinese",
            answerOptions: ["Mandarin Chinese", "English", "Spanish", "Hindi"]
        ),
        QuestionQuizram54Ref(
            question: "What is the smallest country in the world by land area?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "Nauru", "San Marino"]
        ),
        QuestionQuizram54Ref(
            question: "Which planet is known as the 'Red Planet'?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionQuizram54Ref(
            question: "Which ocean lies between Africa and Australia?",
            correctAnswer: "Indian Ocean",
            answerOptions: ["Indian Ocean", "Atlantic Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionQuizram54Ref(
            question: "What is the only continent that is also a country?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "Antarctica", "United States", "Brazil"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionQuizram54Ref(
            question: "What is the tallest waterfall in the world?",
            correctAnswer: "Angel Falls",
            answerOptions: ["Angel Falls", "Niagara Falls", "Iguazu Falls", "Victoria Falls"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is known for the Taj Mahal?",
            correctAnswer: "India",
            answerOptions: ["India", "Pakistan", "Sri Lanka", "Bangladesh"]
        ),
        QuestionQuizram54Ref(
            question: "What is the hardest known substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Platinum", "Graphene"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal can sleep for up to three years?",
            correctAnswer: "Sloth",
            answerOptions: ["Sloth", "Bear", "Koala", "Tiger"]
        ),
        QuestionQuizram54Ref(
            question: "Which element is represented by the symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Ozone", "Opium"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the longest river in the United States?",
            correctAnswer: "Missouri River",
            answerOptions: ["Missouri River", "Mississippi River", "Colorado River", "Amazon River"]
        ),
        QuestionQuizram54Ref(
            question: "Which famous scientist is known for developing the three laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Nikola Tesla"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal is known for its black and white striped coat?",
            correctAnswer: "Zebra",
            answerOptions: ["Zebra", "Tiger", "Lion", "Panther"]
        ),
        QuestionQuizram54Ref(
            question: "Which is the longest mountain range in the world?",
            correctAnswer: "Andes Mountains",
            answerOptions: ["Andes Mountains", "Rocky Mountains", "Himalayas", "Alps"]
        ),
        QuestionQuizram54Ref(
            question: "Which country is the birthplace of the Olympic Games?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "Italy", "United States", "China"]
        ),
        QuestionQuizram54Ref(
            question: "Which fruit is known as the 'King of Fruits' in Southeast Asia?",
            correctAnswer: "Durian",
            answerOptions: ["Durian", "Mango", "Pineapple", "Papaya"]
        ),
        QuestionQuizram54Ref(
            question: "Which bird can fly backwards?",
            correctAnswer: "Hummingbird",
            answerOptions: ["Hummingbird", "Eagle", "Pigeon", "Sparrow"]
        ),
        QuestionQuizram54Ref(
            question: "Which animal is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "African Elephant", "Giraffe", "Rhino"]
        ),
        QuestionQuizram54Ref(
            question: "What is the name of the world's largest coral reef system?",
            correctAnswer: "Great Barrier Reef",
            answerOptions: ["Great Barrier Reef", "Coral Triangle", "Belize Barrier Reef", "Mesoamerican Reef"]
        ),
        QuestionQuizram54Ref(
            question: "What type of animal is the Komodo dragon?",
            correctAnswer: "Lizard",
            answerOptions: ["Lizard", "Snake", "Crocodile", "Turtle"]
        ),
        QuestionQuizram54Ref(
            question: "Which famous landmark is located in Paris, France?",
            correctAnswer: "Eiffel Tower",
            answerOptions: ["Eiffel Tower", "Big Ben", "Colosseum", "Statue of Liberty"]
        ),
        QuestionQuizram54Ref(
            question: "What is the capital of the United Kingdom?",
            correctAnswer: "London",
            answerOptions: ["London", "Edinburgh", "Cardiff", "Belfast"]
        ),
        QuestionQuizram54Ref(
            question: "Which insect is known for its ability to produce honey?",
            correctAnswer: "Bee",
            answerOptions: ["Bee", "Ant", "Fly", "Moth"]
        )
    ]
}
