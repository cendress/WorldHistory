//
//  QuizContent.swift
//  World History
//
//  Created by Christopher Endress on 12/1/25.
//

import Foundation

// MARK: - Quiz Content

struct QuizQuestion: Identifiable {
    let id = UUID()
    let prompt: String
    let choices: [String]
    let correctIndex: Int
    let explanation: String?
}

enum QuizContent {
    static func questions(for period: HistoryPeriod) -> [QuizQuestion] {
        switch period {
            
            //MARK: - Prehistory
            
        case .prehistory:
            return [
                QuizQuestion(
                    prompt: "Which factor most influenced where prehistoric people settled permanently?",
                    choices: [
                        "Beautiful scenic views",
                        "Access to reliable freshwater sources",
                        "Abundance of precious gemstones",
                        "Proximity to future highways"
                    ],
                    correctIndex: 1,
                    explanation: "Permanent settlements usually formed near rivers, lakes, or springs because dependable water was essential for drinking, farming, and supporting animals."
                ),
                QuizQuestion(
                    prompt: "Most information about prehistory comes from which type of source?",
                    choices: [
                        "Newspapers",
                        "Oral speeches",
                        "Archaeological evidence",
                        "Government records"
                    ],
                    correctIndex: 2,
                    explanation: "Artifacts, fossils, and archaeological sites give us physical clues about how prehistoric people lived, worked, and believed."
                ),
                QuizQuestion(
                    prompt: "Which term describes humans who move seasonally to find food?",
                    choices: [
                        "Sedentary farmers",
                        "Urban merchants",
                        "Factory workers",
                        "Pastoral nomads"
                    ],
                    correctIndex: 3,
                    explanation: "Pastoral nomads move with their herds or in search of resources, rather than settling permanently in one place."
                ),
                QuizQuestion(
                    prompt: "What allowed larger, permanent settlements to develop during prehistory?",
                    choices: [
                        "Reliable food surpluses",
                        "Frequent volcanic eruptions",
                        "Constant migrations",
                        "Declining birth rates"
                    ],
                    correctIndex: 0,
                    explanation: "Farming created more predictable food supplies, which supported larger populations and encouraged people to settle permanently."
                ),
                QuizQuestion(
                    prompt: "The Neolithic Revolution refers to the shift from",
                    choices: [
                        "democracy to monarchy",
                        "hunting and gathering to farming",
                        "polytheism to monotheism",
                        "rural life to urbanization"
                    ],
                    correctIndex: 1,
                    explanation: "The Neolithic Revolution marks the transition from nomadic hunting and gathering to settled agriculture and food production."
                ),
                QuizQuestion(
                    prompt: "Which material was commonly used for early stone tools?",
                    choices: [
                        "Flint",
                        "Plastic",
                        "Steel",
                        "Aluminum"
                    ],
                    correctIndex: 0,
                    explanation: "Prehistoric people often shaped flint into sharp blades and points because it breaks in predictable, sharp edges."
                ),
                QuizQuestion(
                    prompt: "Cave paintings like those at Lascaux suggest early humans",
                    choices: [
                        "lacked symbolic thought",
                        "never hunted animals",
                        "had spiritual beliefs",
                        "avoided group rituals"
                    ],
                    correctIndex: 2,
                    explanation: "The images of animals and symbols in caves likely reflect spiritual beliefs, rituals, or attempts to understand the natural world."
                ),
                QuizQuestion(
                    prompt: "Which development most increased population during prehistory?",
                    choices: [
                        "Space exploration",
                        "Agriculture and animal domestication",
                        "Nuclear power",
                        "Industrial factories"
                    ],
                    correctIndex: 1,
                    explanation: "Farming and domesticated animals provided more reliable calories, supporting larger families and long-term population growth."
                ),
                QuizQuestion(
                    prompt: "Domestication of plants and animals means humans",
                    choices: [
                        "stop eating them entirely",
                        "release them into wilderness",
                        "worship them as gods",
                        "control their breeding and use"
                    ],
                    correctIndex: 3,
                    explanation: "Domestication involves selectively breeding species to depend on humans and serve human needs, such as food or labor."
                ),
                QuizQuestion(
                    prompt: "Which region is often called the “Fertile Crescent” of early agriculture?",
                    choices: [
                        "East Asia",
                        "Sub-Saharan Africa",
                        "Mesopotamia",
                        "Antarctica"
                    ],
                    correctIndex: 2,
                    explanation: "Mesopotamia, between the Tigris and Euphrates rivers, had rich soil and is considered a cradle of early farming."
                ),
                QuizQuestion(
                    prompt: "In prehistory, which task was typically shared within small bands?",
                    choices: [
                        "Hunting and gathering food",
                        "Writing legal codes",
                        "Building skyscrapers",
                        "Running global corporations"
                    ],
                    correctIndex: 0,
                    explanation: "Prehistoric bands relied on cooperation in hunting and gathering; everyone contributed to finding and preparing food."
                ),
                QuizQuestion(
                    prompt: "Why is language considered important in prehistory?",
                    choices: [
                        "It eliminated social conflicts",
                        "It replaced all traditions",
                        "It made fossils unnecessary",
                        "It enabled complex cooperation"
                    ],
                    correctIndex: 3,
                    explanation: "Spoken language helped humans share knowledge, plan hunts, pass down stories, and coordinate life in groups."
                ),
                QuizQuestion(
                    prompt: "What do burial sites with grave goods suggest about prehistoric societies?",
                    choices: [
                        "Total rejection of religion",
                        "Belief in afterlife",
                        "Lack of social hierarchy",
                        "Absence of artisans"
                    ],
                    correctIndex: 1,
                    explanation: "Objects buried with the dead imply beliefs about an afterlife and sometimes show status differences within the community."
                ),
                QuizQuestion(
                    prompt: "Which climate change encouraged the development of agriculture?",
                    choices: [
                        "Sudden global freezing",
                        "Constant volcanic winter",
                        "Immediate desert expansion",
                        "End of the Ice Age"
                    ],
                    correctIndex: 3,
                    explanation: "Warming climates after the last Ice Age made some regions more stable, supporting wild grains and early farming."
                ),
                QuizQuestion(
                    prompt: "One major effect of farming on social organization was",
                    choices: [
                        "end of family life",
                        "disappearance of trade",
                        "growth of social hierarchies",
                        "no need for leaders"
                    ],
                    correctIndex: 2,
                    explanation: "Surpluses allowed some people to specialize in leadership, religion, or craftwork, creating clearer social ranks."
                ),
                QuizQuestion(
                    prompt: "Which statement best describes gender roles in many early farming communities?",
                    choices: [
                        "often became more unequal",
                        "were always perfectly equal",
                        "disappeared completely",
                        "were decided by governments"
                    ],
                    correctIndex: 0,
                    explanation: "As farming spread, many societies developed more rigid divisions of labor, often limiting women’s public power."
                ),
                QuizQuestion(
                    prompt: "Stonehenge is an example of which type of prehistoric structure?",
                    choices: [
                        "underground sewer",
                        "modern factory",
                        "megalithic monument",
                        "glass skyscraper"
                    ],
                    correctIndex: 2,
                    explanation: "Stonehenge is a megalithic monument made of huge stones, likely used for rituals, astronomy, or community gatherings."
                ),
                QuizQuestion(
                    prompt: "Which technology helped early humans migrate into colder regions?",
                    choices: [
                        "Printed maps",
                        "Control of fire",
                        "Steam engines",
                        "Smartphones"
                    ],
                    correctIndex: 1,
                    explanation: "Fire allowed people to cook food, stay warm, and survive in environments that were previously too harsh."
                ),
                QuizQuestion(
                    prompt: "Why do historians divide prehistory into Paleolithic and Neolithic eras?",
                    choices: [
                        "different tools and lifestyles",
                        "different writing systems",
                        "different space programs",
                        "different democratic constitutions"
                    ],
                    correctIndex: 0,
                    explanation: "The Paleolithic era focused on hunting and gathering, while the Neolithic era centered on farming and settled villages."
                ),
                QuizQuestion(
                    prompt: "What was a key environmental impact of early farming?",
                    choices: [
                        "instant climate stability",
                        "no change to landscapes",
                        "permanent global flooding",
                        "deforestation and soil erosion"
                    ],
                    correctIndex: 3,
                    explanation: "Clearing forests for fields and overusing land often damaged soils and altered local ecosystems over time."
                )
            ]
            
            //MARK: - Ancient History

        case .ancientHistory:
            return [
                QuizQuestion(
                    prompt: "Ancient civilizations often grew along what geographical feature?",
                    choices: [
                        "Deserts",
                        "Mountains",
                        "Rivers",
                        "Oceans"
                    ],
                    correctIndex: 2,
                    explanation: "Rivers provided water, fertile soil, and transportation."
                )
            ]
            
            //MARK: - Post-Classical Era

        case .postClassicalEra:
            return [
                QuizQuestion(
                    prompt: "The Silk Road was important in the Post-Classical Era mainly because it:",
                    choices: [
                        "Spread only luxury goods",
                        "Connected isolated islands",
                        "Linked Europe, Asia, and Africa through trade",
                        "Was the largest ocean route"
                    ],
                    correctIndex: 2,
                    explanation: "The Silk Road was a vast overland network linking multiple regions."
                )
            ]
            
            //MARK: - Modern History

        case .modern:
            return [
                QuizQuestion(
                    prompt: "Which development is most closely associated with the Modern period?",
                    choices: [
                        "Nomadic herding",
                        "Industrialization",
                        "Feudalism",
                        "Hunter-gatherer societies"
                    ],
                    correctIndex: 1,
                    explanation: "The Modern era is strongly linked to industrialization and technological change."
                )
            ]
            
            //MARK: - Contemporary History

        case .contemporary:
            return [
                QuizQuestion(
                    prompt: "The Contemporary period is often defined by which of the following?",
                    choices: [
                        "The fall of the Roman Empire",
                        "The Neolithic Revolution",
                        "Rapid globalization and technology",
                        "The development of cuneiform"
                    ],
                    correctIndex: 2,
                    explanation: "Our contemporary world is marked by fast global connections and digital technology."
                )
            ]
        }
    }
}
