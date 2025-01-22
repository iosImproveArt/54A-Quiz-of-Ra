

import SwiftUI

struct FactsViewQuizram54: View {
    @State var timer: Timer?
    @State var selectedFact: FactQuizram54? = facts.randomElement()!
    @State var showSheet = false
    
    var isLoggedIn: Bool = true
    var currentTemperature: Double = 22.5
    var favoriteColors: [String] = ["Blue", "Green", "Purple"]
    
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
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFontQuizram54(size: 20, weight: .regular, color: .hexQuizram54("F3D377"))
                                .padding(.top, 16)
                                .padding(.horizontal)
                            Spacer()
                            Text(fact.content)
                                .withFontQuizram54(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFontQuizram54(size: 15.6, weight: .regular)
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFontQuizram54(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFontQuizram54(size: 22, weight: .regular, color: .hexQuizram54("F3D377"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFontQuizram54(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hexQuizram54("F3D377"))
                    
                    Rectangle()
                        .foregroundColor(.hexQuizram54("402E25"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFontQuizram54(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hexQuizram54("402E25")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewQuizram54(showLoading: false, selectedTab: .facts)
}


struct FactQuizram54 {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactQuizram54] = [
    FactQuizram54(
        title: "The Human Brain's Incredible Complexity",
        content: "The human brain is often considered the most complex organ in the body. It is made up of approximately 86 billion neurons, which are connected by trillions of synapses. These neurons communicate with each other through electrical impulses, allowing us to think, learn, remember, and experience emotions. The brain has the ability to change and adapt throughout a person’s life in a process known as neuroplasticity. Despite its complexity, the human brain only weighs about 3 pounds (1.4 kg), which is about 2% of a person's total body weight."
    ),
    FactQuizram54(
        title: "The Origins of the Internet",
        content: "The internet, as we know it today, began as a project in the 1960s, developed by the U.S. Department of Defense. It was originally called ARPANET (Advanced Research Projects Agency Network) and was designed to allow researchers at different universities and research institutions to communicate and share data more easily. The first message ever sent over ARPANET was 'LO,' which was intended to be 'LOGIN,' but the system crashed after only two letters were transmitted. It wasn’t until the 1990s that the World Wide Web was introduced by Tim Berners-Lee, making the internet accessible to the public and revolutionizing the way we communicate and share information globally."
    ),
    FactQuizram54(
        title: "The Mystery of Black Holes",
        content: "Black holes are regions of spacetime where gravity is so strong that nothing, not even light, can escape their pull. These mysterious cosmic objects form when massive stars collapse under their own gravity after exhausting their nuclear fuel. The concept of a black hole was first proposed by physicist John Michell in 1783, and Albert Einstein’s theory of general relativity predicted the existence of these objects in 1915. The first image of a black hole was captured in 2019 by the Event Horizon Telescope, a network of telescopes around the world, marking a significant milestone in the study of these enigmatic phenomena. The black hole imaged is located in the center of the galaxy M87, over 55 million light-years from Earth."
    ),
    FactQuizram54(
        title: "The Incredible Immune System",
        content: "The human immune system is a highly sophisticated defense mechanism designed to protect the body from harmful invaders, such as viruses, bacteria, and other pathogens. It is made up of various organs, tissues, cells, and proteins that work together to identify and neutralize foreign substances. One of the most fascinating aspects of the immune system is its ability to 'remember' previous encounters with pathogens. This is known as immunological memory, and it allows the body to mount a faster and more effective response if the pathogen is encountered again. Vaccines take advantage of this memory, providing the body with a 'preview' of a disease to help it recognize and fight the real pathogen if it is encountered in the future."
    ),
    FactQuizram54(
        title: "The Evolution of Dinosaurs",
        content: "Dinosaurs, the giant reptiles that dominated the Earth for over 165 million years, first appeared during the Triassic period, about 230 million years ago. The earliest dinosaurs were small, agile creatures, but over time, they evolved into a wide variety of species, some of which grew to enormous sizes. The largest dinosaur ever discovered is the Argentinosaurus, which could reach lengths of up to 100 feet (30 meters) and weigh as much as 100 tons. While the dinosaurs went extinct around 66 million years ago, their legacy lives on in modern birds, which are considered the descendants of small theropod dinosaurs. This fascinating connection between dinosaurs and birds is supported by extensive fossil evidence and genetic studies."
    ),
    FactQuizram54(
        title: "The Wonders of the Great Barrier Reef",
        content: "The Great Barrier Reef, located off the coast of Australia, is the largest coral reef system in the world. Stretching over 2,300 kilometers (1,430 miles), it is home to an incredibly diverse array of marine life, including over 1,500 species of fish, 400 species of coral, and numerous other animals such as sea turtles, sharks, and whales. The reef is considered one of the most biodiverse ecosystems on the planet. However, the reef is under threat due to climate change, ocean acidification, and pollution. Rising sea temperatures have caused widespread coral bleaching, where corals expel the algae that provide them with food and color, resulting in a loss of vibrant ecosystems. Conservation efforts are ongoing to protect and preserve this natural wonder."
    ),
    FactQuizram54(
        title: "The History of the Pyramids of Egypt",
        content: "The Great Pyramid of Giza, one of the Seven Wonders of the Ancient World, is the last surviving wonder and a testament to the ingenuity and skill of ancient Egyptian engineers. Built around 4,500 years ago, the pyramid was constructed for the Pharaoh Khufu and originally stood at 146.6 meters (481 feet) tall. It is estimated that the pyramid was built using over 2.3 million stone blocks, with each block weighing an average of 2.5 tons. The precision with which the pyramid was constructed is still a mystery, as the ancient Egyptians did not have advanced tools or technology. The pyramids were not only burial sites for the pharaohs but also symbols of their divine power and a way to ensure their safe passage to the afterlife."
    ),
    FactQuizram54(
        title: "The History of the Roman Empire",
        content: "The Roman Empire, one of the most influential civilizations in history, began as a small city-state in the 8th century BC and eventually expanded to encompass much of Europe, North Africa, and the Middle East. At its height, the Roman Empire controlled over 5 million square kilometers (1.93 million square miles) of land and had a population of around 60 million people. The Romans were known for their engineering feats, including the construction of roads, aqueducts, and the iconic Roman Coliseum. The empire's decline began in the 3rd century AD due to a combination of political instability, economic struggles, and invasions by barbarian tribes. The Western Roman Empire fell in 476 AD, while the Eastern Roman Empire, known as the Byzantine Empire, continued to thrive for another thousand years until its fall in 1453 AD."
    ),
    FactQuizram54(
        title: "The Wonders of Human Space Exploration",
        content: "Human space exploration has come a long way since the launch of the first artificial satellite, Sputnik 1, by the Soviet Union in 1957. The subsequent space race between the U.S. and the Soviet Union led to monumental achievements, such as the first human landing on the Moon during NASA's Apollo 11 mission in 1969. Neil Armstrong, the first person to walk on the Moon, famously said, 'That's one small step for man, one giant leap for mankind.' Since then, humans have explored the Moon, Mars, and beyond, sending robotic spacecraft to the outer planets and launching space telescopes like Hubble to explore the distant universe. The International Space Station, a joint venture between NASA, Roscosmos, and other space agencies, has provided astronauts with a platform to conduct scientific experiments in microgravity, advancing our understanding of life in space and paving the way for future missions to Mars and beyond."
    ),
    FactQuizram54(
        title: "The Life Cycle of Stars",
        content: "Stars are born, live, and die in a cycle that spans billions of years. A star’s life begins in a cloud of gas and dust, known as a nebula, which collapses under its own gravity to form a protostar. Once the core of the protostar becomes hot and dense enough, nuclear fusion begins, marking the start of the star’s main sequence phase. During this phase, the star fuses hydrogen into helium, releasing energy in the process. Eventually, the star runs out of hydrogen and starts fusing heavier elements. Depending on its mass, a star will either expand into a red giant or supergiant and then shed its outer layers to form a planetary nebula, leaving behind a white dwarf, or it may undergo a supernova explosion, resulting in a neutron star or black hole. The life cycle of stars is one of the fundamental processes that shapes the universe."
    ),
    FactQuizram54(
        title: "The Power of the Amazon Rainforest",
        content: "The Amazon Rainforest, often referred to as the 'lungs of the Earth,' is the largest tropical rainforest in the world, covering approximately 5.5 million square kilometers (2.1 million square miles) across nine countries in South America. It is home to approximately 390 billion trees, including thousands of species that are found nowhere else on Earth. The rainforest is incredibly important for the global climate as it absorbs vast amounts of carbon dioxide and releases oxygen into the atmosphere. It also plays a crucial role in regulating the Earth's weather patterns, especially through the process of evapotranspiration, where moisture from the forest is released into the atmosphere, helping to form clouds and bring rain. Sadly, the Amazon is under threat from deforestation, mining, and agriculture, which could have catastrophic impacts on the environment."
    ),
    FactQuizram54(
        title: "The Mystery of the Bermuda Triangle",
        content: "The Bermuda Triangle, a region of the Atlantic Ocean bounded by points in Miami, Bermuda, and Puerto Rico, is infamous for the mysterious disappearances of ships and aircraft. Over the years, numerous theories have been proposed to explain these disappearances, ranging from magnetic anomalies that disrupt navigation equipment, to more outlandish ideas like extraterrestrial activity or underwater alien bases. While some incidents remain unexplained, the majority of disappearances in the area can be attributed to natural causes, including unpredictable weather patterns, underwater currents, and human error. Despite the intrigue surrounding the Bermuda Triangle, scientists argue that it is no more dangerous than any other part of the ocean, and the high number of incidents is proportional to the amount of traffic passing through the region."
    ),
    FactQuizram54(
        title: "The History of the Great Wall of China",
        content: "The Great Wall of China, one of the most iconic structures in the world, was built over several centuries, starting as early as the 7th century BC, and stretching over 13,000 miles (21,196 kilometers) across northern China. The wall was constructed primarily to protect Chinese states and empires from invasions and raids by nomadic tribes from the north, such as the Mongols. The Great Wall is not a single continuous wall but rather a series of walls and fortifications built by various Chinese dynasties. The construction of the wall involved millions of workers, including soldiers, peasants, and prisoners, many of whom lost their lives due to the harsh conditions. Over time, the wall also served as a symbol of Chinese strength, culture, and resilience. Today, it stands as a UNESCO World Heritage site and one of the Seven Wonders of the Medieval World."
    ),
    FactQuizram54(
        title: "The Fascinating Process of Photosynthesis",
        content: "Photosynthesis is the process by which green plants, algae, and certain bacteria convert light energy, usually from the Sun, into chemical energy stored in the form of glucose (a type of sugar). This process is essential for life on Earth, as it is the primary source of food and oxygen for most living organisms. During photosynthesis, plants absorb carbon dioxide from the atmosphere through tiny pores in their leaves called stomata and take in water through their roots. Using the energy from sunlight, plants convert these raw materials into glucose and oxygen through a series of complex chemical reactions. The glucose produced by photosynthesis is then used by the plant as energy for growth, reproduction, and other functions, while the oxygen is released into the atmosphere, which is vital for the respiration of most living organisms."
    ),
    FactQuizram54(
        title: "The Mystery of the Stonehenge",
        content: "Stonehenge, one of the most famous prehistoric monuments in the world, is located on the Salisbury Plain in England. It consists of a ring of standing stones, each weighing several tons, and is believed to have been constructed between 3000 BC and 2000 BC. The purpose of Stonehenge has been the subject of much speculation over the years, with theories ranging from it being an ancient astronomical observatory, a religious temple, a burial site, or even a site for healing. The construction of Stonehenge remains a mystery, as the stones were transported from as far as 150 miles (240 kilometers) away, using techniques that are still not fully understood. Despite centuries of study, the exact purpose and methods of its construction continue to elude researchers, making Stonehenge a fascinating and enduring enigma."
    ),
    FactQuizram54(
        title: "The Enormous Size of the Sun",
        content: "The Sun, the closest star to Earth, is a massive ball of hot, glowing gas that provides light and heat to our planet. It is about 109 times larger in diameter than Earth and has a mass that is approximately 330,000 times that of Earth, accounting for about 99.86% of the total mass of our solar system. The Sun is made primarily of hydrogen (about 75%) and helium (about 24%), with small amounts of heavier elements such as oxygen, carbon, and nitrogen. The Sun's energy is produced through nuclear fusion, a process in which hydrogen atoms in its core are fused together to form helium, releasing enormous amounts of energy in the form of light and heat. This energy sustains life on Earth and drives many natural processes, such as weather and climate. Despite its immense size and power, the Sun is considered to be an average-sized star, and it is expected to continue burning for another 5 billion years before eventually evolving into a red giant and then a white dwarf."
    ),
    FactQuizram54(
        title: "The Phenomenon of Bioluminescence",
        content: "Bioluminescence is the production and emission of light by living organisms, such as certain species of fish, fungi, and insects. This fascinating phenomenon occurs when chemical reactions within the organism’s cells produce light. In many cases, bioluminescence is used as a form of communication, camouflage, or to attract prey or mates. One of the most well-known examples of bioluminescence is the firefly, which uses a chemical reaction in its abdomen to produce a soft, glowing light. In the ocean, many marine organisms, such as deep-sea fish and jellyfish, use bioluminescence to illuminate their surroundings or to confuse predators. The light produced by bioluminescent organisms is often blue or green, as these wavelengths travel the farthest underwater. Bioluminescence continues to be an area of active research, with scientists studying its applications in medicine, environmental monitoring, and other fields."
    ),
    FactQuizram54(
        title: "The Birth of the Universe and the Big Bang Theory",
        content: "The Big Bang Theory is the most widely accepted explanation for the origin of the universe. According to this theory, the universe began as an incredibly hot, dense point, often referred to as a singularity, around 13.8 billion years ago. This point then expanded rapidly in a process known as cosmic inflation, causing the universe to cool and allowing matter and energy to form. Over time, this matter coalesced into galaxies, stars, and planets. The evidence for the Big Bang Theory comes from a variety of sources, including the observed redshift of distant galaxies, the cosmic microwave background radiation, and the distribution of elements in the universe. The universe continues to expand today, and scientists continue to study the mysteries of its birth and its ultimate fate, including the possibility of a 'Big Freeze' or a 'Big Crunch.'"
    ),
    FactQuizram54(
        title: "The Evolution of Flight: From Birds to Airplanes",
        content: "The evolution of flight is one of the most remarkable achievements in the history of life on Earth. The first flying animals, such as insects and birds, evolved over millions of years, developing specialized adaptations such as wings, lightweight skeletons, and the ability to generate lift. The first vertebrates to take to the skies were the pterosaurs, large flying reptiles that lived during the Mesozoic era. Birds, which are considered modern-day dinosaurs, are the only surviving group of these ancient flying animals. Human flight, on the other hand, began with the invention of the airplane in the early 20th century. The Wright brothers, Orville and Wilbur Wright, made the first powered flight in 1903, marking the beginning of modern aviation. Today, airplanes are essential for global transportation, enabling people and goods to travel faster and further than ever before."
    ),
    FactQuizram54(
        title: "The Secrets of the Deep Ocean",
        content: "The deep ocean remains one of the least explored and most mysterious areas of the Earth. Covering more than 70% of the planet's surface, the ocean is home to a vast array of species, many of which are still undiscovered. The deepest part of the ocean is the Mariana Trench in the Pacific Ocean, which reaches a depth of about 36,000 feet (10,973 meters). To put that into perspective, the height of Mount Everest, the tallest mountain in the world, is just 29,032 feet (8,848 meters). Despite the challenges of exploring the deep ocean, scientists have made incredible discoveries, including bioluminescent creatures, giant squid, and deep-sea vents that support unique ecosystems that don't rely on sunlight. The study of these ecosystems is revolutionizing our understanding of life and evolution."
    ),
    FactQuizram54(
        title: "The Impact of Global Warming on Biodiversity",
        content: "Global warming, driven by the accumulation of greenhouse gases such as carbon dioxide in the atmosphere, is having a profound impact on the planet's biodiversity. As the Earth's temperature rises, ecosystems are experiencing shifts in species distribution, with some species migrating toward cooler regions, while others face extinction due to their inability to adapt to the changing environment. Coral reefs, which are already suffering from the effects of ocean acidification, are particularly vulnerable to rising sea temperatures, resulting in coral bleaching and the destruction of marine habitats. Additionally, the accelerated melting of ice sheets and glaciers is threatening species that depend on cold climates, such as polar bears and penguins. Conservation efforts are critical to mitigating the impacts of climate change and protecting biodiversity for future generations."
    ),
    FactQuizram54(
        title: "The Development of Artificial Intelligence",
        content: "Artificial intelligence (AI) is a rapidly evolving field of technology that aims to create machines capable of performing tasks that typically require human intelligence. From its early beginnings in the 1950s, when pioneers like Alan Turing proposed the concept of machine learning, AI has evolved to become an integral part of modern life. Today, AI powers everything from voice assistants and recommendation algorithms to self-driving cars and medical diagnostic systems. Machine learning, a subset of AI, enables computers to improve their performance over time by analyzing large datasets and recognizing patterns. While AI holds tremendous potential for improving efficiency and solving complex problems, it also raises ethical concerns, such as job displacement, privacy issues, and the need for responsible use. Researchers continue to explore the boundaries of AI's capabilities, and its future developments may reshape the way we live and work."
    ),
    FactQuizram54(
        title: "The History of the Internet",
        content: "The history of the internet dates back to the 1960s, when the U.S. Department of Defense developed a communication network known as ARPANET (Advanced Research Projects Agency Network). ARPANET was designed to allow researchers to share information and resources across different locations, and it used packet-switching technology to transmit data in small, discrete packets, rather than in continuous streams. In 1983, the introduction of the Domain Name System (DNS) allowed users to access websites using human-readable addresses, such as www.example.com. The development of the World Wide Web by Tim Berners-Lee in 1991 made the internet more user-friendly by introducing hyperlinks, web pages, and browsers, opening up the internet to the general public. Over the following decades, the internet rapidly expanded and revolutionized how people communicate, access information, and conduct business, leading to the interconnected, digital world we live in today."
    ),
    FactQuizram54(
        title: "The Impact of Human Activity on the Environment",
        content: "Human activity has had a profound and often negative impact on the environment. Industrialization, urbanization, and deforestation have led to significant changes in ecosystems, with the loss of biodiversity being one of the most visible consequences. The burning of fossil fuels, such as coal, oil, and natural gas, has contributed to the release of greenhouse gases, leading to global warming and climate change. Deforestation, particularly in tropical rainforests, not only reduces the planet's capacity to absorb carbon dioxide but also destroys vital habitats for countless species. Pollution, including plastic waste and chemical runoff, is also a growing concern, as it contaminates air, water, and soil, harming both wildlife and human populations. Despite these challenges, there is growing awareness of the need to protect the environment, and efforts to promote sustainability, reduce emissions, and conserve natural resources are becoming increasingly important."
    ),
    FactQuizram54(
        title: "The Evolution of Human Civilization",
        content: "The evolution of human civilization is a story of technological innovation, cultural development, and the rise and fall of great empires. Early humans were hunter-gatherers, living in small groups and relying on their environment for survival. The advent of agriculture around 10,000 years ago marked the beginning of settled societies, allowing humans to cultivate crops, domesticate animals, and form villages and towns. Over time, early civilizations such as Mesopotamia, Egypt, and the Indus Valley developed complex social structures, writing systems, and advanced technologies. The rise of empires such as the Roman Empire, the Byzantine Empire, and the Mongol Empire shaped the course of history, while the Industrial Revolution in the 18th century ushered in an era of rapid technological progress. Today, human civilization continues to evolve, with advances in science, technology, and communication transforming the way we live, work, and interact with one another."
    ),
    FactQuizram54(
        title: "The Concept of Time and the Theory of Relativity",
        content: "Time is a concept that we all experience, but its true nature has been a subject of philosophical and scientific debate for centuries. In the early 20th century, physicist Albert Einstein revolutionized our understanding of time with his theory of relativity. According to Einstein's special theory of relativity, time is not an absolute constant but is relative to the observer's motion. This means that time can move at different rates depending on how fast an object is moving relative to another object. In his general theory of relativity, Einstein extended this idea to include the effects of gravity, showing that time moves more slowly in stronger gravitational fields. This phenomenon, known as time dilation, has been confirmed through experiments, such as observing the difference in the passage of time between atomic clocks on the ground and those on satellites in orbit. The theory of relativity fundamentally changed our understanding of the universe and opened up new avenues for research in cosmology and physics."
    ),
    FactQuizram54(
        title: "The Role of DNA in Genetics",
        content: "DNA, or deoxyribonucleic acid, is the molecule that carries the genetic instructions used in the growth, development, and functioning of all living organisms. DNA is composed of two long chains of nucleotides twisted into a double helix, with each nucleotide containing one of four chemical bases: adenine (A), cytosine (C), guanine (G), and thymine (T). The sequence of these bases encodes genetic information that determines an organism's traits, such as eye color, hair color, and susceptibility to certain diseases. DNA is passed down from parents to offspring, with variations in the genetic code contributing to diversity within populations. The study of genetics has led to groundbreaking discoveries, such as the identification of genes associated with various diseases and the development of genetic testing. In recent years, advancements in genetic engineering and CRISPR technology have opened up new possibilities for treating genetic disorders and modifying organisms for agricultural or medical purposes."
    ),
    FactQuizram54(
        title: "The Great Migration of Animals",
        content: "Migration is a natural phenomenon that occurs in many animal species as they move from one place to another in search of better living conditions, food, or breeding grounds. One of the most spectacular examples of migration is the annual journey of monarch butterflies, which travel thousands of miles from North America to Mexico to escape the harsh winter. Similarly, humpback whales migrate over 16,000 kilometers (10,000 miles) each year between their feeding grounds in the polar regions and their breeding grounds in the warmer waters of the tropics. Other well-known migrations include the wildebeest migration in Africa, where millions of wildebeests, zebras, and gazelles move across the Serengeti in search of fresh grazing land, and the salmon migration, where salmon return to the freshwater streams where they were born to spawn. Migration is an essential part of many species' life cycles and plays a key role in maintaining ecosystem balance."
    ),
    FactQuizram54(
        title: "The Wonders of the Human Brain",
        content: "The human brain is one of the most complex and powerful organs in the body. Weighing about 3 pounds (1.4 kilograms), it is composed of roughly 86 billion neurons, which communicate with each other through trillions of synaptic connections. The brain is responsible for regulating many of the body's vital functions, including heart rate, breathing, and movement. It is also the seat of cognition, emotions, memory, and consciousness. One of the most fascinating aspects of the brain is its plasticity, the ability to change and adapt in response to learning, experiences, and injury. Neuroplasticity allows the brain to form new neural pathways, which is why rehabilitation after brain injuries can sometimes lead to recovery. Despite decades of research, the full workings of the brain remain a mystery, and scientists continue to explore its functions in the hope of better understanding how it shapes our thoughts and behaviors."
    ),
    FactQuizram54(
        title: "The Birth and Death of Stars",
        content: "Stars are born from vast clouds of gas and dust in space, which collapse under the influence of gravity. As the material compresses, it heats up, and nuclear fusion begins, turning hydrogen into helium and releasing enormous amounts of energy in the form of light and heat. This marks the birth of a new star. The size of a star determines its life cycle. Smaller stars, like our Sun, have relatively long lives, burning for billions of years before eventually expanding into red giants and shedding their outer layers, leaving behind a dense core known as a white dwarf. Larger stars, on the other hand, burn through their fuel much more quickly and end their lives in dramatic supernova explosions, which can trigger the formation of new stars. The remnants of these massive stars may become neutron stars or black holes, regions of space where gravity is so intense that not even light can escape. The life cycle of stars is essential for the creation of elements that make up planets, life, and even the very air we breathe."
    ),
    FactQuizram54(
        title: "The Mystery of Black Holes",
        content: "A black hole is a region of space where gravity is so strong that nothing, not even light, can escape. Black holes are formed when massive stars collapse under their own gravity, compressing all their matter into an infinitesimally small and dense point known as a singularity. The boundary surrounding a black hole is called the event horizon, and once anything crosses it, there is no turning back. Despite their name, black holes do not 'suck' everything around them; their gravity only affects objects that come too close. Black holes are detected indirectly by observing the effects of their gravity on nearby stars and matter. They can also cause matter to emit high-energy radiation as it is pulled toward the event horizon. Recent discoveries, including the first-ever image of a black hole captured by the Event Horizon Telescope, have provided new insights into these mysterious objects. Understanding black holes could lead to breakthroughs in understanding the nature of space, time, and gravity."
    ),
    FactQuizram54(
        title: "The Life Cycle of a Butterfly",
        content: "The life cycle of a butterfly is one of the most remarkable transformations in the animal kingdom, known as complete metamorphosis. It begins when a butterfly lays its eggs on a suitable host plant. The eggs hatch into larvae, commonly known as caterpillars, which spend their time feeding and growing. As the caterpillar matures, it forms a protective casing around itself called a pupa or chrysalis. Inside the chrysalis, the caterpillar undergoes a radical transformation, during which its body structure is completely restructured into an adult butterfly. Once the transformation is complete, the butterfly emerges from the chrysalis, ready to begin its adult life. The adult butterfly's primary purpose is to reproduce, laying eggs to begin the next generation. The metamorphosis from caterpillar to butterfly is not only a fascinating process but also serves as a reminder of the incredible adaptability and resilience of life."
    ),
    FactQuizram54(
        title: "The Importance of the Polar Ice Caps",
        content: "The polar ice caps, located at the Earth's northern and southern poles, play a critical role in regulating the planet's climate and supporting ecosystems. The ice caps reflect a significant portion of the Sun's energy, helping to keep the Earth's temperature stable. They also act as giant reservoirs of freshwater, containing about 70% of the Earth's fresh water. In the Arctic, the ice cap is shrinking due to global warming, which has led to rising sea levels and loss of habitat for species like polar bears and seals. In Antarctica, the ice cap is more stable, but it is still experiencing some thinning and melting, particularly around the edges. The loss of ice from the polar caps not only threatens biodiversity but also disrupts global weather patterns and the Earth's ability to regulate temperatures. Scientists are closely monitoring the polar ice caps and their changes to understand how they affect the planet's future climate."
    ),
    FactQuizram54(
        title: "The Evolution of Human Technology",
        content: "Human technology has evolved dramatically over the past few thousand years, shaping the course of civilization. Early humans used simple tools made from stone, bone, and wood to hunt, gather food, and build shelter. The invention of agriculture around 10,000 years ago marked a major turning point in human history, allowing for the development of more advanced tools and the growth of permanent settlements. The discovery of metalworking enabled the creation of stronger tools and weapons, leading to the rise of complex societies and empires. The Industrial Revolution in the 18th and 19th centuries brought about a dramatic shift, as steam engines, electricity, and mass production transformed economies and societies. Today, we are in the midst of the digital revolution, where advancements in computers, artificial intelligence, and biotechnology are transforming how we live, work, and communicate. Each leap in technological innovation has brought about both opportunities and challenges, and the future holds even greater possibilities as humans continue to push the boundaries of invention."
    ),
    FactQuizram54(
        title: "The Role of Volcanoes in Shaping the Earth",
        content: "Volcanoes play a significant role in shaping the Earth's surface and atmosphere. When a volcano erupts, it releases gases, ash, and molten rock from beneath the Earth's crust. These eruptions can create new landforms, such as islands, mountains, and calderas, and can dramatically alter the surrounding environment. Volcanoes also contribute to the formation of fertile soil, as volcanic ash contains important minerals that enrich the land. While volcanic eruptions can be devastating, they also provide essential nutrients for ecosystems. In addition to shaping the land, volcanoes release gases like carbon dioxide and sulfur dioxide into the atmosphere, influencing the Earth's climate. The study of volcanoes, known as volcanology, has provided scientists with valuable insights into the Earth's internal processes and the dynamic forces that shape our planet."
    ),
    FactQuizram54(
        title: "The Significance of the Great Barrier Reef",
        content: "The Great Barrier Reef, located off the coast of Queensland, Australia, is the largest coral reef system in the world, stretching over 2,300 kilometers (1,400 miles) and consisting of more than 2,900 individual reefs and 900 islands. The reef is a UNESCO World Heritage site and is home to a diverse array of marine life, including more than 1,500 species of fish, 411 types of hard coral, and numerous species of sea turtles, sharks, and rays. The Great Barrier Reef is crucial to the health of the ocean and the planet, as it supports biodiversity, protects coastal communities from storm surges, and contributes to the global carbon cycle. However, the reef is facing significant threats from climate change, pollution, and overfishing. Rising ocean temperatures cause coral bleaching, which weakens the corals and makes them more vulnerable to disease. Efforts to protect and preserve the Great Barrier Reef are essential to maintaining its ecological balance and ensuring its survival for future generations."
    ),
    FactQuizram54(
        title: "The Fascinating World of Microorganisms",
        content: "Microorganisms, also known as microbes, are tiny living organisms that are too small to be seen with the naked eye. They include bacteria, viruses, fungi, and protozoa, and they are found in virtually every environment on Earth, from the depths of the ocean to the soil, air, and even inside the human body. Despite their small size, microorganisms play an essential role in maintaining life on Earth. They are responsible for processes like decomposition, nitrogen fixation, and the production of oxygen in the oceans. Many microorganisms are beneficial to humans, aiding in digestion, producing antibiotics, and being used in food production such as yogurt and cheese. However, some microorganisms can cause diseases, and understanding their behavior is key to combating infections and maintaining health. Advances in microbiology have revolutionized our understanding of the microbial world, opening up new avenues for medicine, biotechnology, and environmental science."
    )
]
