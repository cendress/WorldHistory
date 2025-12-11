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
                    prompt: "Ancient river valley civilizations most often developed where?",
                    choices: [
                        "Dry desert interiors",
                        "Steep highland plateaus",
                        "Along major river valley systems",
                        "Frozen northern tundra"
                    ],
                    correctIndex: 2,
                    explanation: "River valleys provided fertile soil, reliable water, and transportation routes that supported dense populations and early states."
                ),
                QuizQuestion(
                    prompt: "In Mesopotamia, the term “ziggurat” refers to what?",
                    choices: [
                        "Underground irrigation canal",
                        "Stepped temple platform for worship",
                        "Royal pleasure garden",
                        "Defensive city wall"
                    ],
                    correctIndex: 1,
                    explanation: "Ziggurats were massive stepped platforms with temples on top, symbolizing a bridge between earth and the gods."
                ),
                QuizQuestion(
                    prompt: "The Code of Hammurabi is significant mainly because it",
                    choices: [
                        "recorded clear written legal penalties",
                        "described myths about the afterlife",
                        "mapped Mesopotamian trade routes",
                        "listed royal family genealogies"
                    ],
                    correctIndex: 0,
                    explanation: "The code publicly displayed written laws and punishments, reinforcing social order and the king’s authority."
                ),
                QuizQuestion(
                    prompt: "Ancient Egyptian pharaohs were viewed primarily as",
                    choices: [
                        "elected officials",
                        "military officers",
                        "living gods on earth",
                        "foreign invaders"
                    ],
                    correctIndex: 2,
                    explanation: "Egyptians believed the pharaoh was a divine ruler whose power maintained harmony between the gods and the people."
                ),
                QuizQuestion(
                    prompt: "Which writing system used wedge-shaped marks on clay tablets?",
                    choices: [
                        "Cuneiform",
                        "Hieroglyphics",
                        "Sanskrit",
                        "Phoenician alphabet"
                    ],
                    correctIndex: 0,
                    explanation: "Cuneiform developed in Mesopotamia and used wedge-shaped impressions pressed into clay to record economic, legal, and literary texts."
                ),
                QuizQuestion(
                    prompt: "Hieroglyphics were primarily used in which ancient civilization?",
                    choices: [
                        "Mesopotamian city-states",
                        "Classical Athens",
                        "Han dynasty China",
                        "Pharaonic Egypt"
                    ],
                    correctIndex: 3,
                    explanation: "Ancient Egyptians used hieroglyphics on temple walls, tombs, and scrolls to record religious and political information."
                ),
                QuizQuestion(
                    prompt: "Which ancient civilization is most closely associated with democracy’s early development?",
                    choices: [
                        "Sparta",
                        "Classical Athens",
                        "Persian Empire",
                        "Mauryan Empire"
                    ],
                    correctIndex: 1,
                    explanation: "Athens experimented with direct democracy, where free male citizens participated in making laws and decisions."
                ),
                QuizQuestion(
                    prompt: "The Roman Republic was characterized by",
                    choices: [
                        "rule by citizen-elected representatives",
                        "absolute power of one emperor",
                        "complete equality for all residents",
                        "total rejection of written law"
                    ],
                    correctIndex: 0,
                    explanation: "In the republic, citizens elected officials like consuls and senators who governed on their behalf under a written constitution."
                ),
                QuizQuestion(
                    prompt: "The Twelve Tables of Rome are important because they",
                    choices: [
                        "codified public laws for citizens",
                        "described Caesar’s military victories",
                        "listed foreign trade partners",
                        "outlined Roman religious rituals"
                    ],
                    correctIndex: 0,
                    explanation: "The Twelve Tables publicly displayed Roman laws, establishing transparency and some legal protections for citizens."
                ),
                QuizQuestion(
                    prompt: "Which belief system emphasized filial piety and social order in East Asia?",
                    choices: [
                        "Confucianism",
                        "Zoroastrianism",
                        "Greek polytheism",
                        "Germanic paganism"
                    ],
                    correctIndex: 0,
                    explanation: "Confucianism stressed respect for parents, proper behavior, and stable hierarchies as foundations for a harmonious society."
                ),
                QuizQuestion(
                    prompt: "The Persian Empire is known for creating",
                    choices: [
                        "a vast network of royal roads",
                        "massive naval colonies worldwide",
                        "gunpowder-based military technology",
                        "democratic city-state alliances"
                    ],
                    correctIndex: 0,
                    explanation: "Persian rulers built roads and relay stations that improved communication, trade, and control across their huge empire."
                ),
                QuizQuestion(
                    prompt: "Which religion introduced a strong tradition of ethical monotheism in the ancient world?",
                    choices: [
                        "Judaism",
                        "Hinduism",
                        "Greek polytheism",
                        "Shinto"
                    ],
                    correctIndex: 0,
                    explanation: "Judaism centered on one God and emphasized moral laws, influencing later religions such as Christianity and Islam."
                ),
                QuizQuestion(
                    prompt: "The caste system became closely associated with which civilization’s social structure?",
                    choices: [
                        "Han dynasty China",
                        "Gupta India",
                        "Roman Italy",
                        "Mayan city-states"
                    ],
                    correctIndex: 1,
                    explanation: "In ancient India, caste hierarchy shaped people’s occupations, marriages, and social status under Hindu beliefs."
                ),
                QuizQuestion(
                    prompt: "Hellenistic culture emerged after conquests by",
                    choices: [
                        "Hammurabi",
                        "Ramses II",
                        "Alexander the Great",
                        "Julius Caesar"
                    ],
                    correctIndex: 2,
                    explanation: "Alexander’s empire blended Greek, Egyptian, Persian, and other traditions, creating a Hellenistic cultural fusion across regions."
                ),
                QuizQuestion(
                    prompt: "Which geographic feature helped protect ancient Egypt from frequent invasions?",
                    choices: [
                        "Dense northern forests",
                        "Surrounding deserts and cataracts",
                        "Open grassland plains",
                        "Large inland seas"
                    ],
                    correctIndex: 1,
                    explanation: "Deserts and river cataracts formed natural barriers that limited large-scale invasions into the Nile Valley."
                ),
                QuizQuestion(
                    prompt: "Which major trade route connected China to the Mediterranean during ancient times?",
                    choices: [
                        "Indian Ocean triangle",
                        "Trans-Saharan caravan route",
                        "Silk Road",
                        "Atlantic coastal circuit"
                    ],
                    correctIndex: 2,
                    explanation: "The Silk Road linked East Asia and the Mediterranean, carrying silk, spices, ideas, and technologies between civilizations."
                ),
                QuizQuestion(
                    prompt: "In classical Athens, which group was allowed to vote?",
                    choices: [
                        "All residents including slaves",
                        "Adult male citizens only",
                        "Women and foreign merchants",
                        "Conquered peoples from colonies"
                    ],
                    correctIndex: 1,
                    explanation: "Athenian democracy was limited; only free-born adult male citizens could vote, excluding women, slaves, and foreigners."
                ),
                QuizQuestion(
                    prompt: "The fall of the Western Roman Empire in 476 CE led to",
                    choices: [
                        "immediate global economic collapse",
                        "spread of Islam across Europe",
                        "political fragmentation in Western Europe",
                        "unification under a single emperor"
                    ],
                    correctIndex: 2,
                    explanation: "After Rome fell, Western Europe broke into smaller kingdoms, setting the stage for medieval feudal societies."
                ),
                QuizQuestion(
                    prompt: "Which ancient empire is most associated with advanced road systems and aqueducts?",
                    choices: [
                        "Roman Empire",
                        "Mauryan Empire",
                        "Qin dynasty",
                        "Phoenician cities"
                    ],
                    correctIndex: 0,
                    explanation: "Roman engineers built durable roads and aqueducts that supported trade, troop movement, and urban water supplies."
                ),
                QuizQuestion(
                    prompt: "Phoenician traders are especially remembered for developing what?",
                    choices: [
                        "early alphabetic writing system",
                        "bronze chariot warfare",
                        "complex caste hierarchies",
                        "massive pyramid complexes"
                    ],
                    correctIndex: 0,
                    explanation: "The Phoenician alphabet simplified writing and later influenced Greek and Latin alphabets, shaping written communication."
                )
            ]
            
            //MARK: - Post-Classical Era
            
        case .postClassicalEra:
            return [
                QuizQuestion(
                    prompt: "The Silk Road was important in the Post-Classical Era mainly because it",
                    choices: [
                        "transported mostly enslaved workers",
                        "linked Europe, Asia, and Africa",
                        "replaced all sea trade routes",
                        "connected only small island villages"
                    ],
                    correctIndex: 1,
                    explanation: "The Silk Road connected major regions, carrying luxury goods, technologies, and ideas between different civilizations."
                ),
                QuizQuestion(
                    prompt: "Which empire preserved Roman law and Greek learning in its capital, Constantinople?",
                    choices: [
                        "Mongol Empire",
                        "Mali Empire",
                        "Byzantine Empire",
                        "Song dynasty"
                    ],
                    correctIndex: 2,
                    explanation: "The Byzantine Empire continued Eastern Roman traditions and became a center for Christian scholarship and classical texts."
                ),
                QuizQuestion(
                    prompt: "The split between Sunni and Shia Muslims originally centered on",
                    choices: [
                        "use of Arabic language",
                        "fasting during holy months",
                        "number of daily prayers",
                        "proper successor to Muhammad"
                    ],
                    correctIndex: 3,
                    explanation: "The division began over who should lead the Muslim community after Muhammad’s death and evolved into deeper differences."
                ),
                QuizQuestion(
                    prompt: "Under feudalism in medieval Europe, what did vassals usually receive from lords?",
                    choices: [
                        "plots of land and protection",
                        "complete political independence",
                        "ownership of major cities",
                        "unlimited freedom of religion"
                    ],
                    correctIndex: 0,
                    explanation: "In exchange for military service and loyalty, vassals received fiefs—land and protection—from their lords."
                ),
                QuizQuestion(
                    prompt: "The trans-Saharan trade routes primarily connected West Africa with",
                    choices: [
                        "Pacific island kingdoms",
                        "Northern Africa and Mediterranean markets",
                        "Mesoamerican city-states",
                        "Scandinavian trading ports"
                    ],
                    correctIndex: 1,
                    explanation: "Caravans crossed the Sahara to link West African gold and salt resources to North African and Mediterranean economies."
                ),
                QuizQuestion(
                    prompt: "Which city became a major intellectual and trade center in the Mali Empire?",
                    choices: [
                        "Constantinople",
                        "Venice",
                        "Kyoto",
                        "Timbuktu"
                    ],
                    correctIndex: 3,
                    explanation: "Timbuktu housed Islamic universities and bustling markets, symbolizing West Africa’s role in global trade and scholarship."
                ),
                QuizQuestion(
                    prompt: "Which technological innovation from China transformed warfare in the Post-Classical Era?",
                    choices: [
                        "Nuclear missiles",
                        "Steel battleships",
                        "Gunpowder weapons",
                        "Radar systems"
                    ],
                    correctIndex: 2,
                    explanation: "Chinese experimentation with gunpowder eventually led to bombs, rockets, and firearms that reshaped military power."
                ),
                QuizQuestion(
                    prompt: "The Mongol Empire’s vast network of roads and relay stations mainly",
                    choices: [
                        "improved communication across Eurasia",
                        "ended all regional trade routes",
                        "blocked cultural exchanges between societies",
                        "eliminated long-distance travel"
                    ],
                    correctIndex: 0,
                    explanation: "Mongol policies encouraged trade and made travel safer, helping goods and ideas spread across Eurasia."
                ),
                QuizQuestion(
                    prompt: "Which religion spread widely into Southeast Asia through Indian Ocean trade?",
                    choices: [
                        "Buddhism and Islam",
                        "Shinto and Confucianism",
                        "Zoroastrianism alone",
                        "Orthodox Christianity"
                    ],
                    correctIndex: 0,
                    explanation: "Merchants and missionaries carried Buddhism and Islam along maritime routes, establishing them in coastal port cities."
                ),
                QuizQuestion(
                    prompt: "The Crusades were a series of conflicts originally launched to",
                    choices: [
                        "conquer East Asian empires",
                        "retake Jerusalem from Muslim control",
                        "defend West Africa from invaders",
                        "overthrow Byzantine emperors"
                    ],
                    correctIndex: 1,
                    explanation: "European crusaders aimed to seize Holy Land sites, though the wars also expanded trade and cultural contacts."
                ),
                QuizQuestion(
                    prompt: "The Black Death’s major impact on Europe included",
                    choices: [
                        "total end of urban life",
                        "immediate scientific revolution",
                        "permanent collapse of Christianity",
                        "massive population loss and labor shortages"
                    ],
                    correctIndex: 3,
                    explanation: "The plague killed large portions of Europe’s population, weakening feudal systems and changing economic relationships."
                ),
                QuizQuestion(
                    prompt: "Which dynasty is known for its economic growth, printing, and porcelain in China?",
                    choices: [
                        "Song dynasty",
                        "Romanov dynasty",
                        "Ottoman dynasty",
                        "Gupta dynasty"
                    ],
                    correctIndex: 0,
                    explanation: "The Song dynasty oversaw technological advances, expanded commerce, and produced fine porcelain for global trade."
                ),
                QuizQuestion(
                    prompt: "What was one major effect of the Mongol conquests on trade?",
                    choices: [
                        "complete destruction of Silk Road cities",
                        "total isolation of East Asia",
                        "increased safety along overland routes",
                        "end of caravan-based commerce"
                    ],
                    correctIndex: 2,
                    explanation: "Mongol control reduced banditry and encouraged merchants, causing Eurasian overland trade to flourish for a time."
                ),
                QuizQuestion(
                    prompt: "The Byzantine Empire’s official religion after Emperor Justinian was",
                    choices: [
                        "Theravada Buddhism",
                        "Sunni Islam",
                        "Roman polytheism",
                        "Eastern Orthodox Christianity"
                    ],
                    correctIndex: 3,
                    explanation: "Eastern Orthodox Christianity shaped Byzantine art, politics, and identity, centered in Constantinople’s great churches."
                ),
                QuizQuestion(
                    prompt: "In Japan’s medieval period, the samurai were",
                    choices: [
                        "nomadic horse traders",
                        "warrior elites serving powerful daimyo",
                        "foreign mercenaries from Europe",
                        "tax collectors for emperors"
                    ],
                    correctIndex: 1,
                    explanation: "Samurai pledged loyalty to daimyo lords, forming a warrior class that enforced order under a feudal-style system."
                ),
                QuizQuestion(
                    prompt: "The Indian Ocean trade network differed from the Silk Road because it",
                    choices: [
                        "ignored coastal port cities",
                        "banned luxury goods entirely",
                        "relied on monsoon wind patterns",
                        "involved only overland caravans"
                    ],
                    correctIndex: 2,
                    explanation: "Merchants timed voyages to seasonal monsoon winds, linking East Africa, Arabia, India, and Southeast Asia by sea."
                ),
                QuizQuestion(
                    prompt: "Which empire captured Constantinople in 1453, ending the Byzantine state?",
                    choices: [
                        "Carolingian Empire",
                        "Mughal Empire",
                        "Safavid Empire",
                        "Ottoman Empire"
                    ],
                    correctIndex: 3,
                    explanation: "Ottoman forces seized Constantinople, renaming it Istanbul and turning it into a major imperial capital."
                ),
                QuizQuestion(
                    prompt: "Which document, signed in 1215, limited the English king’s power?",
                    choices: [
                        "Edict of Nantes",
                        "Magna Carta",
                        "Peace of Augsburg",
                        "Bill of Rights"
                    ],
                    correctIndex: 1,
                    explanation: "The Magna Carta forced the king to recognize certain rights of nobles and accept limits on royal authority."
                ),
                QuizQuestion(
                    prompt: "Sufi missionaries helped spread which religion along trade routes?",
                    choices: [
                        "Islam",
                        "Shinto",
                        "Judaism",
                        "Zoroastrianism"
                    ],
                    correctIndex: 0,
                    explanation: "Sufi mystics spread Islam through personal teaching, poetry, and example, especially in South and Central Asia."
                ),
                QuizQuestion(
                    prompt: "A major similarity between the Silk Road and Indian Ocean trade was that both",
                    choices: [
                        "facilitated cultural exchange between regions",
                        "required only government-controlled caravans",
                        "avoided transporting religious ideas",
                        "operated exclusively within one empire"
                    ],
                    correctIndex: 0,
                    explanation: "Both networks moved goods and ideas, helping religions, technologies, and artistic styles spread across long distances."
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
                ),
                QuizQuestion(
                    prompt: "Which movement emphasized observation and experimentation in science?",
                    choices: [
                        "Scientific Revolution",
                        "Age of Exploration",
                        "Romantic literature",
                        "Medieval scholasticism"
                    ],
                    correctIndex: 0,
                    explanation: "The Scientific Revolution encouraged testing ideas through observation and experiment instead of relying solely on tradition."
                ),
                QuizQuestion(
                    prompt: "Enlightenment thinkers generally argued that governments should",
                    choices: [
                        "be based on rational laws",
                        "grant unlimited power to monarchs",
                        "silence all religious differences",
                        "protect natural rights of citizens"
                    ],
                    correctIndex: 3,
                    explanation: "Many Enlightenment philosophers believed governments exist to safeguard people’s natural rights and can be challenged if they fail."
                ),
                QuizQuestion(
                    prompt: "A major cause of the American Revolution was",
                    choices: [
                        "spread of absolute monarchy worldwide",
                        "end of all colonial trade",
                        "opposition to British taxation policies",
                        "desire for industrial factory jobs"
                    ],
                    correctIndex: 2,
                    explanation: "Colonists protested British taxes and lack of representation, eventually leading to demands for independence."
                ),
                QuizQuestion(
                    prompt: "Nationalism in the 1800s often encouraged people to",
                    choices: [
                        "support colonial rule by foreigners",
                        "identify with shared culture and language",
                        "avoid political participation entirely",
                        "reject any common national identity"
                    ],
                    correctIndex: 1,
                    explanation: "Nationalism emphasized loyalty to a nation united by culture, language, or history, sometimes fueling unification movements."
                ),
                QuizQuestion(
                    prompt: "The Industrial Revolution began first in",
                    choices: [
                        "Great Britain",
                        "Japan",
                        "Brazil",
                        "Russia"
                    ],
                    correctIndex: 0,
                    explanation: "Abundant coal, rivers, capital, and labor allowed Great Britain to industrialize earlier than many other regions."
                ),
                QuizQuestion(
                    prompt: "One social effect of early industrialization was",
                    choices: [
                        "decline of urban factory work",
                        "return to rural village farming",
                        "growth of crowded industrial cities",
                        "end of long-distance trade networks"
                    ],
                    correctIndex: 2,
                    explanation: "Factories drew workers into rapidly growing cities, often creating overcrowded neighborhoods and harsh living conditions."
                ),
                QuizQuestion(
                    prompt: "Nineteenth-century labor unions formed mainly to",
                    choices: [
                        "support child labor in factories",
                        "defend privileges of nobility",
                        "promote unrestricted laissez-faire policies",
                        "improve wages and working conditions"
                    ],
                    correctIndex: 3,
                    explanation: "Unions organized workers to demand safer workplaces, shorter hours, and higher pay from industrial employers."
                ),
                QuizQuestion(
                    prompt: "A major motive for European imperialism was",
                    choices: [
                        "wish to end all trade",
                        "desire for new markets and resources",
                        "fear of technological progress",
                        "goal of isolation from colonies"
                    ],
                    correctIndex: 1,
                    explanation: "Industrial powers sought raw materials and new markets, driving them to conquer and exploit overseas territories."
                ),
                QuizQuestion(
                    prompt: "The Berlin Conference of 1884–1885",
                    choices: [
                        "divided Africa among European powers",
                        "ended slavery in the Americas",
                        "created the League of Nations",
                        "united German and Italian states"
                    ],
                    correctIndex: 0,
                    explanation: "European nations met to formalize how they would partition Africa, largely ignoring African peoples and borders."
                ),
                QuizQuestion(
                    prompt: "Both the American and French Revolutions",
                    choices: [
                        "rejected ideas of popular sovereignty",
                        "strengthened absolute monarchies in Europe",
                        "challenged traditional political authority systems",
                        "expanded rights only for nobility"
                    ],
                    correctIndex: 2,
                    explanation: "Revolutionaries in both cases questioned long-standing royal authority and promoted ideas of government by the people."
                ),
                QuizQuestion(
                    prompt: "Simón Bolívar is best known for",
                    choices: [
                        "writing the Communist Manifesto",
                        "unifying Italy under one kingdom",
                        "defeating Mongol rule in Russia",
                        "leading independence movements in South America"
                    ],
                    correctIndex: 3,
                    explanation: "Bolívar played a central role in liberating several South American colonies from Spanish rule."
                ),
                QuizQuestion(
                    prompt: "The Meiji Restoration in Japan involved",
                    choices: [
                        "rapid modernization and industrial reforms",
                        "return to strict isolation policies",
                        "adoption of European colonial rule",
                        "collapse of central government authority"
                    ],
                    correctIndex: 0,
                    explanation: "Meiji leaders modernized Japan’s economy and institutions to compete with Western powers while preserving independence."
                ),
                QuizQuestion(
                    prompt: "The Opium Wars revealed that China",
                    choices: [
                        "had stronger navies than Britain",
                        "was vulnerable to Western military power",
                        "successfully expelled all foreign merchants",
                        "refused any trade with neighbors"
                    ],
                    correctIndex: 1,
                    explanation: "British victories forced China to sign unequal treaties, exposing its military weakness against industrialized nations."
                ),
                QuizQuestion(
                    prompt: "Which invention most increased rapid long-distance communication?",
                    choices: [
                        "steam-powered locomotive",
                        "mechanized spinning jenny",
                        "telegraph using electric signals",
                        "internal combustion automobile"
                    ],
                    correctIndex: 2,
                    explanation: "The telegraph allowed messages to travel almost instantly over long distances using electrical signals."
                ),
                QuizQuestion(
                    prompt: "A long-term cause of World War I was",
                    choices: [
                        "use of atomic weapons",
                        "rise of global environmental movements",
                        "spread of worldwide democratic elections",
                        "militarism and entangling alliances"
                    ],
                    correctIndex: 3,
                    explanation: "Rival alliances, nationalism, imperialism, and arms buildups made Europe unstable even before the assassination at Sarajevo."
                ),
                QuizQuestion(
                    prompt: "One effect of the Treaty of Versailles was",
                    choices: [
                        "resentment in Germany over reparations",
                        "immediate global economic equality",
                        "end of nationalism in Europe",
                        "victory for Central Powers alliance"
                    ],
                    correctIndex: 0,
                    explanation: "Harsh reparations and territorial losses angered many Germans, contributing to later political extremism."
                ),
                QuizQuestion(
                    prompt: "During the modern era, many women",
                    choices: [
                        "lost all legal property rights",
                        "organized to demand voting rights",
                        "returned permanently to feudal obligations",
                        "rejected participation in public life"
                    ],
                    correctIndex: 1,
                    explanation: "Women’s movements campaigned for suffrage and greater political, economic, and educational opportunities."
                ),
                QuizQuestion(
                    prompt: "Socialist thinkers in the 1800s argued that governments should",
                    choices: [
                        "protect only property-owning elites",
                        "privatize all major industries",
                        "regulate or own key industries",
                        "eliminate all forms of taxation"
                    ],
                    correctIndex: 2,
                    explanation: "Many socialists believed governments should control crucial industries to reduce inequality and protect workers."
                ),
                QuizQuestion(
                    prompt: "In the early twentieth century, anticolonial movements often",
                    choices: [
                        "supported continued European imperial rule",
                        "avoided using any political organizations",
                        "focused only on religious conversion",
                        "demanded self-government and independence"
                    ],
                    correctIndex: 3,
                    explanation: "Nationalist leaders organized parties and protests demanding independence from European empires, foreshadowing decolonization."
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
                ),
                QuizQuestion(
                    prompt: "After World War II, the United Nations was created mainly to",
                    choices: [
                        "punish Axis powers more harshly",
                        "prevent future global conflicts",
                        "end all national militaries",
                        "create single world government"
                    ],
                    correctIndex: 1,
                    explanation: "The United Nations was founded to encourage cooperation and reduce the chances of another world war."
                ),
                QuizQuestion(
                    prompt: "The Cold War is best described as",
                    choices: [
                        "ideological rivalry between superpowers",
                        "long period of global peace",
                        "total collapse of nuclear weapons",
                        "unification of all world governments"
                    ],
                    correctIndex: 0,
                    explanation: "The Cold War featured tension between the United States and Soviet Union without direct large-scale fighting between them."
                ),
                QuizQuestion(
                    prompt: "In the twentieth century, decolonization refers to",
                    choices: [
                        "expansion of European empires overseas",
                        "spread of feudal systems worldwide",
                        "rise of absolute monarchies again",
                        "colonies gaining independence from empires"
                    ],
                    correctIndex: 3,
                    explanation: "Decolonization describes movements in which colonies in Africa, Asia, and elsewhere gained independence from imperial powers."
                ),
                QuizQuestion(
                    prompt: "Globalization in the contemporary era mainly describes",
                    choices: [
                        "complete isolation of all countries",
                        "increasing interconnection of world economies",
                        "end of international trade and travel",
                        "return to strictly local markets"
                    ],
                    correctIndex: 1,
                    explanation: "Globalization involves growing links among countries through trade, technology, culture, and migration."
                ),
                QuizQuestion(
                    prompt: "The European Union was created primarily to",
                    choices: [
                        "strengthen isolation between European states",
                        "restore power of absolute monarchs",
                        "promote colonial expansion in Africa",
                        "promote economic and political integration"
                    ],
                    correctIndex: 3,
                    explanation: "The European Union encourages cooperation, common markets, and shared policies among member states."
                ),
                QuizQuestion(
                    prompt: "A major environmental concern of the contemporary period is",
                    choices: [
                        "climate change from human activities",
                        "permanent removal of greenhouse gases",
                        "complete freezing of all oceans",
                        "total elimination of carbon emissions"
                    ],
                    correctIndex: 0,
                    explanation: "Burning fossil fuels and deforestation increase greenhouse gases, contributing to climate change."
                ),
                QuizQuestion(
                    prompt: "The term Information Age refers to the spread of",
                    choices: [
                        "feudal estates and serfs",
                        "only agricultural technologies",
                        "stone tools and weapons",
                        "computers, internet, and digital communication"
                    ],
                    correctIndex: 3,
                    explanation: "The Information Age is shaped by computers, networks, and rapid sharing of data around the world."
                ),
                QuizQuestion(
                    prompt: "The Universal Declaration of Human Rights aims to",
                    choices: [
                        "abolish all national governments",
                        "list basic rights for all people",
                        "create one global religion",
                        "replace all national constitutions"
                    ],
                    correctIndex: 1,
                    explanation: "Adopted in 1948, it describes fundamental rights and freedoms that should be protected everywhere."
                ),
                QuizQuestion(
                    prompt: "The terrorist attacks of September 11, 2001 led to",
                    choices: [
                        "immediate end of air travel",
                        "new security policies and wars",
                        "collapse of the global economy",
                        "elimination of all terrorism worldwide"
                    ],
                    correctIndex: 1,
                    explanation: "The attacks prompted the United States to launch wars in Afghanistan and Iraq and tighten security."
                ),
                QuizQuestion(
                    prompt: "Social media has most changed politics by",
                    choices: [
                        "speeding up spread of information",
                        "eliminating all political disagreements",
                        "ending influence of public opinion",
                        "preventing citizens from organizing protests"
                    ],
                    correctIndex: 0,
                    explanation: "Social media allows information, campaigns, and organizing efforts to reach large audiences quickly."
                ),
                QuizQuestion(
                    prompt: "Non-governmental organizations (NGOs) in the contemporary era often",
                    choices: [
                        "replace every national government",
                        "control all international trade",
                        "avoid working on social issues",
                        "address global problems beyond governments"
                    ],
                    correctIndex: 3,
                    explanation: "NGOs focus on issues like health, environment, and human rights, sometimes pressuring governments to act."
                ),
                QuizQuestion(
                    prompt: "A key demographic trend in many developed countries today is",
                    choices: [
                        "rapid growth of rural populations",
                        "aging populations and lower birthrates",
                        "sudden return to large families",
                        "mass migration to farming villages"
                    ],
                    correctIndex: 1,
                    explanation: "Many developed countries face challenges related to aging populations and fewer young workers."
                ),
                QuizQuestion(
                    prompt: "Nuclear weapons remain a global concern because they",
                    choices: [
                        "are impossible to detect anywhere",
                        "have never been used in history",
                        "can cause massive, long-term destruction",
                        "only affect small local regions"
                    ],
                    correctIndex: 2,
                    explanation: "The destructive power and lasting environmental damage from nuclear weapons create major security and ethical issues."
                ),
                QuizQuestion(
                    prompt: "Many contemporary migration flows are driven by",
                    choices: [
                        "conflict, poverty, and climate change",
                        "endless new land for farming",
                        "complete global economic equality",
                        "desire to avoid better jobs"
                    ],
                    correctIndex: 0,
                    explanation: "People often move to escape violence, economic hardship, or environmental stress and seek safety or opportunity."
                ),
                QuizQuestion(
                    prompt: "International trade agreements like NAFTA mainly seek to",
                    choices: [
                        "ban trade between member countries",
                        "force everyone to use one currency",
                        "reduce barriers to regional trade",
                        "eliminate all immigration controls"
                    ],
                    correctIndex: 2,
                    explanation: "Such agreements aim to lower tariffs and quotas, encouraging trade and economic cooperation among signatories."
                ),
                QuizQuestion(
                    prompt: "Global popular culture in the contemporary era often involves",
                    choices: [
                        "ending all traditional art forms",
                        "mixing of music, food, and styles",
                        "strict separation of cultural products",
                        "banning foreign movies and songs"
                    ],
                    correctIndex: 1,
                    explanation: "Globalization spreads cultural products, leading to blended styles and shared entertainment across countries."
                ),
                QuizQuestion(
                    prompt: "A pandemic is best defined as",
                    choices: [
                        "disease limited to one village",
                        "outbreak in multiple continents",
                        "illness affecting only wild animals",
                        "short-lived local health emergency"
                    ],
                    correctIndex: 1,
                    explanation: "Pandemics spread across large regions or worldwide, affecting people in many countries."
                ),
                QuizQuestion(
                    prompt: "The phrase digital divide refers to",
                    choices: [
                        "unequal access to digital technologies",
                        "complete rejection of all technology",
                        "differences between urban populations only",
                        "gap between old and new countries"
                    ],
                    correctIndex: 0,
                    explanation: "Some communities have limited internet or device access, which can deepen educational and economic inequalities."
                ),
                QuizQuestion(
                    prompt: "One major change in the contemporary global economy has been",
                    choices: [
                        "end of service sector jobs",
                        "shift toward service and knowledge work",
                        "return to purely agricultural labor",
                        "collapse of all international corporations"
                    ],
                    correctIndex: 1,
                    explanation: "Many economies now rely heavily on services, information, and technology rather than only manufacturing or farming."
                )
            ]
        }
    }
}
