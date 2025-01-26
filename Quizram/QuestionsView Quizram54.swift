//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewQuizram54Ref: View {
    @State var selectedQuestion: Tab4QuestionQuizram54Ref = Tab4QuestionQuizram54Ref.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFontQuizram54Ref(size: isSE ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFontQuizram54Ref(size: 18, weight: .regular, color: showHint1 ? .hexQuizram54Ref("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFontQuizram54Ref(size: 18, weight: .regular, color: showHint2 ? .hexQuizram54Ref("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionQuizram54Ref.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFontQuizram54Ref(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFontQuizram54Ref(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFontQuizram54Ref(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewQuizram54Ref(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionQuizram54Ref {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionQuizram54Ref] = [
        Tab4QuestionQuizram54Ref(
            question: "What is the capital city of France?",
            hint1: "It is known as the 'City of Light'.",
            hint2: "Its name starts with 'P'.",
            answer: "Paris"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who wrote 'Romeo and Juliet'?",
            hint1: "This author is a famous English playwright.",
            hint2: "His last name starts with 'S'.",
            answer: "Shakespeare"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the chemical symbol for water?",
            hint1: "It consists of two elements.",
            hint2: "Its formula starts with 'H'.",
            answer: "H2O"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which planet is known as the Red Planet?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest ocean on Earth?",
            hint1: "It covers more than 30% of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest animal on Earth?",
            hint1: "It is a marine mammal.",
            hint2: "Its name includes 'blue'.",
            answer: "Blue whale"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the smallest country in the world?",
            hint1: "It is located in Europe.",
            hint2: "It is an independent city-state within Rome.",
            answer: "Vatican City"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the speed of light?",
            hint1: "It is approximately 300,000 km/s.",
            hint2: "It starts with '3'.",
            answer: "299,792 km/s"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who painted the Mona Lisa?",
            hint1: "He was an Italian artist and inventor.",
            hint2: "His name starts with 'L'.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the hardest natural substance?",
            hint1: "It is often used in jewelry.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "Its name starts with 'H'.",
            answer: "Hydrogen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who was the first man to walk on the moon?",
            hint1: "It happened in 1969.",
            hint2: "His last name starts with 'A'.",
            answer: "Neil Armstrong"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest desert in the world?",
            hint1: "It is located in Africa.",
            hint2: "Its name starts with 'S'.",
            answer: "Sahara Desert"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the capital city of Japan?",
            hint1: "It is the largest city in the country.",
            hint2: "Its name starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the freezing point of water in Celsius?",
            hint1: "It is below room temperature.",
            hint2: "The number is 0.",
            answer: "0 degrees"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which planet is the hottest in the solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Its name starts with 'V'.",
            answer: "Venus"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the longest river in the world?",
            hint1: "It flows through South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Amazon River"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the main ingredient in sushi?",
            hint1: "It is a type of grain.",
            hint2: "It starts with 'R'.",
            answer: "Rice"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who discovered gravity?",
            hint1: "He was an English mathematician and physicist.",
            hint2: "His last name starts with 'N'.",
            answer: "Isaac Newton"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the chemical symbol for gold?",
            hint1: "It has two letters.",
            hint2: "It starts with 'A'.",
            answer: "Au"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the most spoken language in the world?",
            hint1: "It is primarily spoken in China.",
            hint2: "Its name starts with 'M'.",
            answer: "Mandarin"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the tallest tree species in the world?",
            hint1: "It is found in California, USA.",
            hint2: "Its name starts with 'R'.",
            answer: "Redwood"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who is the author of 'Harry Potter'?",
            hint1: "She is a British author.",
            hint2: "Her last name starts with 'R'.",
            answer: "J.K. Rowling"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country has the most population?",
            hint1: "It is located in Asia.",
            hint2: "Its name starts with 'C'.",
            answer: "China"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest continent?",
            hint1: "It contains 48 countries.",
            hint2: "Its name starts with 'A'.",
            answer: "Asia"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the primary gas in Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its name starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who was the first President of the United States?",
            hint1: "He is known as the 'Father of His Country'.",
            hint2: "His last name starts with 'W'.",
            answer: "George Washington"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It is a big cat.",
            hint2: "Its name starts with 'L'.",
            answer: "Lion"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the boiling point of water in Celsius?",
            hint1: "It is a three-digit number.",
            hint2: "The number is 100.",
            answer: "100 degrees"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the smallest unit of matter?",
            hint1: "It is made up of protons, neutrons, and electrons.",
            hint2: "Its name starts with 'A'.",
            answer: "Atom"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the national flower of Japan?",
            hint1: "It is often associated with spring.",
            hint2: "Its name starts with 'C'.",
            answer: "Cherry blossom"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country is famous for its maple syrup?",
            hint1: "It is located in North America.",
            hint2: "Its name starts with 'C'.",
            answer: "Canada"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who invented the telephone?",
            hint1: "He was a Scottish-born inventor.",
            hint2: "His last name starts with 'B'.",
            answer: "Alexander Graham Bell"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the largest mammal that lives in water?",
            hint1: "Its name includes 'whale'.",
            hint2: "It starts with 'B'.",
            answer: "Blue whale"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which planet has the most moons?",
            hint1: "It is the largest planet in the solar system.",
            hint2: "Its name starts with 'J'.",
            answer: "Jupiter"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the Greek god of the sea?",
            hint1: "He is one of the twelve Olympian deities.",
            hint2: "His name starts with 'P'.",
            answer: "Poseidon"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "Its name starts with 'S'.",
            answer: "Stapes"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country is known as the 'Land of the Rising Sun'?",
            hint1: "It is an island nation in Asia.",
            hint2: "Its name starts with 'J'.",
            answer: "Japan"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the chemical symbol for sodium?",
            hint1: "It has two letters.",
            hint2: "It starts with 'N'.",
            answer: "Na"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who is known as the 'Father of Computers'?",
            hint1: "He was an English mathematician and inventor.",
            hint2: "His last name starts with 'B'.",
            answer: "Charles Babbage"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which bird is known for its ability to mimic sounds?",
            hint1: "It is often kept as a pet.",
            hint2: "Its name starts with 'P'.",
            answer: "Parrot"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest land carnivore?",
            hint1: "It is a type of bear.",
            hint2: "Its name starts with 'P'.",
            answer: "Polar bear"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the hardest known material on Earth?",
            hint1: "It is often used in jewelry.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which city hosted the first modern Olympic Games?",
            hint1: "It is the capital of Greece.",
            hint2: "Its name starts with 'A'.",
            answer: "Athens"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the currency used in Japan?",
            hint1: "Its name has three letters.",
            hint2: "It starts with 'Y'.",
            answer: "Yen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the fastest land animal?",
            hint1: "It can reach speeds of up to 75 mph.",
            hint2: "Its name starts with 'C'.",
            answer: "Cheetah"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest island in the world?",
            hint1: "It is part of the Kingdom of Denmark.",
            hint2: "Its name starts with 'G'.",
            answer: "Greenland"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who developed the theory of relativity?",
            hint1: "He was a famous physicist.",
            hint2: "His last name starts with 'E'.",
            answer: "Albert Einstein"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which gas do plants absorb from the atmosphere during photosynthesis?",
            hint1: "It is a greenhouse gas.",
            hint2: "Its chemical formula is CO2.",
            answer: "Carbon dioxide"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the longest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answer: "Femur"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which planet is known for its rings?",
            hint1: "It is the sixth planet from the Sun.",
            hint2: "Its name starts with 'S'.",
            answer: "Saturn"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the square root of 64?",
            hint1: "It is a single-digit number.",
            hint2: "The answer is 8.",
            answer: "8"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who painted 'Starry Night'?",
            hint1: "He was a Dutch post-impressionist artist.",
            hint2: "His last name starts with 'V'.",
            answer: "Vincent van Gogh"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country is home to the Great Barrier Reef?",
            hint1: "It is located in the Southern Hemisphere.",
            hint2: "Its name starts with 'A'.",
            answer: "Australia"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the main ingredient in bread?",
            hint1: "It is made from grains.",
            hint2: "Its name starts with 'F'.",
            answer: "Flour"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which organ is responsible for pumping blood through the body?",
            hint1: "It is part of the circulatory system.",
            hint2: "Its name starts with 'H'.",
            answer: "Heart"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the most abundant element in the universe?",
            hint1: "It is the lightest element.",
            hint2: "Its name starts with 'H'.",
            answer: "Hydrogen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who wrote 'The Odyssey'?",
            hint1: "He was an ancient Greek poet.",
            hint2: "His name starts with 'H'.",
            answer: "Homer"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the official language of Brazil?",
            hint1: "It is not Spanish.",
            hint2: "Its name starts with 'P'.",
            answer: "Portuguese"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the most widely consumed beverage in the world?",
            hint1: "It is made by steeping leaves in hot water.",
            hint2: "Its name starts with 'T'.",
            answer: "Tea"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country is famous for its tulips and windmills?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'N'.",
            answer: "Netherlands"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the capital city of Canada?",
            hint1: "It is not Toronto.",
            hint2: "Its name starts with 'O'.",
            answer: "Ottawa"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which famous ship sank after hitting an iceberg in 1912?",
            hint1: "It was called 'unsinkable.'",
            hint2: "Its name starts with 'T'.",
            answer: "Titanic"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the smallest planet in our solar system?",
            hint1: "It is closest to the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the capital city of Italy?",
            hint1: "It is home to the Colosseum.",
            hint2: "Its name starts with 'R'.",
            answer: "Rome"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the fairy in 'Peter Pan'?",
            hint1: "She is small and has wings.",
            hint2: "Her name starts with 'T'.",
            answer: "Tinker Bell"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the process by which plants make food using sunlight?",
            hint1: "It occurs in chloroplasts.",
            hint2: "It starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which instrument has 88 keys?",
            hint1: "It is often found in orchestras and households.",
            hint2: "Its name starts with 'P'.",
            answer: "Piano"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which country is known for the Eiffel Tower?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'F'.",
            answer: "France"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the process where water turns into vapor?",
            hint1: "It happens when water is heated.",
            hint2: "It starts with 'E'.",
            answer: "Evaporation"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the main ingredient in hummus?",
            hint1: "It is a type of legume.",
            hint2: "Its name starts with 'C'.",
            answer: "Chickpeas"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who discovered penicillin?",
            hint1: "He was a Scottish scientist.",
            hint2: "His last name starts with 'F'.",
            answer: "Alexander Fleming"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which element has the chemical symbol 'O'?",
            hint1: "It is essential for respiration.",
            hint2: "Its name starts with 'O'.",
            answer: "Oxygen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the smallest planet in our solar system?",
            hint1: "It is closest to the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the capital city of Germany?",
            hint1: "It is known for its Brandenburg Gate.",
            hint2: "Its name starts with 'B'.",
            answer: "Berlin"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which instrument is often associated with jazz music?",
            hint1: "It is a brass instrument.",
            hint2: "Its name starts with 'S'.",
            answer: "Saxophone"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the ship that brought the Pilgrims to America?",
            hint1: "It set sail in 1620.",
            hint2: "Its name starts with 'M'.",
            answer: "Mayflower"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the name of the largest land animal?",
            hint1: "It has a trunk.",
            hint2: "Its name starts with 'E'.",
            answer: "Elephant"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who is the Greek goddess of wisdom?",
            hint1: "Her name starts with 'A'.",
            hint2: "She is often associated with owls.",
            answer: "Athena"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the term for animals that eat only plants?",
            hint1: "It starts with 'H'.",
            hint2: "It is the opposite of carnivore.",
            answer: "Herbivore"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the longest river in Africa?",
            hint1: "It flows northward.",
            hint2: "Its name starts with 'N'.",
            answer: "Nile"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which metal is liquid at room temperature?",
            hint1: "Its chemical symbol is Hg.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the largest star in our solar system?",
            hint1: "It is at the center of our solar system.",
            hint2: "Its name starts with 'S'.",
            answer: "Sun"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which sport is known as the 'king of sports'?",
            hint1: "It is played with a round ball.",
            hint2: "Its name starts with 'F'.",
            answer: "Football (Soccer)"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the national dish of Italy?",
            hint1: "It often contains tomato sauce and cheese.",
            hint2: "Its name starts with 'P'.",
            answer: "Pizza"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which planet is known as Earth's twin due to its size?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Its name starts with 'V'.",
            answer: "Venus"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Who wrote 'Pride and Prejudice'?",
            hint1: "She was an English novelist.",
            hint2: "Her last name starts with 'A'.",
            answer: "Jane Austen"
        ),
        Tab4QuestionQuizram54Ref(
            question: "What is the hardest rock on Earth?",
            hint1: "It is often used in cutting tools.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which U.S. state is known as the 'Sunshine State'?",
            hint1: "It is famous for its beaches.",
            hint2: "Its name starts with 'F'.",
            answer: "Florida"
        ),
        Tab4QuestionQuizram54Ref(
            question: "Which organ in the human body filters blood?",
            hint1: "You have two of them.",
            hint2: "Their name starts with 'K'.",
            answer: "Kidneys"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
