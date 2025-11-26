//
//  GlossaryContent.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import Foundation

struct GlossaryItem: Identifiable, Hashable {
    let id = UUID()
    let term: String
    let definition: String
    var isExpanded: Bool = false
}

enum GlossaryContent {
    static func items(for period: HistoryPeriod) -> [GlossaryItem] {
        switch period {
            
            // MARK: - Prehistory
            
        case .prehistory:
            return [
                GlossaryItem(
                    term: "Prehistory",
                    definition: "The span of human existence before the invention of writing, when knowledge of the past comes mainly from artifacts and fossils rather than written records."
                ),
                GlossaryItem(
                    term: "Archaeology",
                    definition: "The study of past human societies through the excavation and analysis of artifacts, buildings, and other physical remains."
                ),
                GlossaryItem(
                    term: "Artifact",
                    definition: "Any object made or modified by humans, such as tools, pottery, weapons, or jewelry, that helps historians and archaeologists understand how people lived."
                ),
                GlossaryItem(
                    term: "Hunter-Gatherer",
                    definition: "A member of a society that survives by hunting animals and gathering wild plants, typically moving frequently rather than living in permanent settlements."
                ),
                GlossaryItem(
                    term: "Nomad",
                    definition: "A person who has no permanent home and moves from place to place, often following animal herds, seasonal plants, or water sources."
                ),
                GlossaryItem(
                    term: "Paleolithic",
                    definition: "The Old Stone Age, a long period when humans used simple stone tools, lived in small, mobile groups, and relied on hunting and gathering for food."
                ),
                GlossaryItem(
                    term: "Neolithic",
                    definition: "The New Stone Age, when humans began practicing agriculture, domesticating animals, and building permanent villages, leading to more complex societies."
                ),
                GlossaryItem(
                    term: "Neolithic Revolution",
                    definition: "The major turning point when many human societies shifted from a nomadic hunter-gatherer lifestyle to settled farming, causing population growth and the rise of villages and early towns."
                ),
                GlossaryItem(
                    term: "Domestication",
                    definition: "The process of selectively breeding and training plants or animals so they become more useful and dependent on humans for survival."
                ),
                GlossaryItem(
                    term: "Surplus",
                    definition: "An amount of food or resources that exceeds basic needs, allowing some people in a society to focus on other jobs besides producing food."
                ),
                GlossaryItem(
                    term: "Specialization",
                    definition: "The development of specific skills or jobs, such as metalworking, pottery, or religious leadership, made possible when a society has enough surplus to support non-farm workers."
                ),
                GlossaryItem(
                    term: "Culture",
                    definition: "The shared beliefs, values, customs, language, and traditions that shape the identity and way of life of a group of people."
                )
            ]
            
            // MARK: - Ancient History
            
        case .ancientHistory:
            return [
                GlossaryItem(
                    term: "Civilization",
                    definition: "An advanced and organized society characterized by cities, a central government, social classes, specialized jobs, and often writing and complex belief systems."
                ),
                GlossaryItem(
                    term: "City-State",
                    definition: "A small independent political unit consisting of a city and its surrounding territory, with its own government and laws, like those found in ancient Mesopotamia or Greece."
                ),
                GlossaryItem(
                    term: "Empire",
                    definition: "A large political unit in which a single ruler controls several peoples, regions, or formerly independent states, often gained through conquest and maintained by force."
                ),
                GlossaryItem(
                    term: "Dynasty",
                    definition: "A ruling family in which power is passed down from one generation to the next, often over many years or even centuries."
                ),
                GlossaryItem(
                    term: "Monarchy",
                    definition: "A form of government in which a king, queen, or emperor holds central power, usually inheriting the position by birth."
                ),
                GlossaryItem(
                    term: "Democracy",
                    definition: "A system of government in which political power is shared by the people, who participate directly or through elected representatives in making laws and decisions."
                ),
                GlossaryItem(
                    term: "Republic",
                    definition: "A form of government in which citizens elect leaders to represent them and make decisions on their behalf, rather than being ruled by a king or queen."
                ),
                GlossaryItem(
                    term: "Pharaoh",
                    definition: "The title of the rulers of ancient Egypt, who were seen not only as kings but also as divine or semi-divine figures responsible for maintaining order and harmony."
                ),
                GlossaryItem(
                    term: "Cuneiform",
                    definition: "One of the earliest systems of writing, developed in ancient Mesopotamia, using wedge-shaped marks pressed into clay tablets with a reed stylus."
                ),
                GlossaryItem(
                    term: "Hieroglyphics",
                    definition: "The formal writing system of ancient Egypt, using picture-like symbols to represent sounds, words, and ideas, often carved on monuments or written on papyrus."
                ),
                GlossaryItem(
                    term: "Polytheism",
                    definition: "The belief in and worship of many gods or deities, each often associated with specific powers or areas of life, such as war, fertility, or the sun."
                ),
                GlossaryItem(
                    term: "Monotheism",
                    definition: "The belief in and worship of a single, all-powerful god, as seen in religions such as Judaism, Christianity, and Islam."
                ),
                GlossaryItem(
                    term: "Barter",
                    definition: "An economic system in which goods and services are exchanged directly for other goods and services, without the use of money."
                ),
                GlossaryItem(
                    term: "Trade Route",
                    definition: "A regular path or network used by merchants to move goods, people, and ideas between different regions and civilizations."
                )
            ]
            
            // MARK: - Post-Classical Era
            
        case .postClassicalEra:
            return [
                GlossaryItem(
                    term: "Post-Classical Era",
                    definition: "The period roughly from 500 to 1450 CE, after the collapse of many classical empires and before the early modern age, marked by regional kingdoms, expanding trade, and the spread of major religions."
                ),
                GlossaryItem(
                    term: "Feudalism",
                    definition: "A social and political system in medieval Europe and Japan in which land was exchanged for loyalty and military service, creating a strict hierarchy of kings, nobles, knights, and peasants."
                ),
                GlossaryItem(
                    term: "Manor",
                    definition: "A large estate owned by a noble or lord in a feudal system, including farmland, villages, and the peasants who worked the land."
                ),
                GlossaryItem(
                    term: "Serf",
                    definition: "A peasant legally tied to a lord’s land who provided labor and a share of crops in exchange for protection and the right to farm a small plot."
                ),
                GlossaryItem(
                    term: "Vassal",
                    definition: "A person, often a noble, who received land (a fief) from a lord in exchange for loyalty and military service."
                ),
                GlossaryItem(
                    term: "Caliphate",
                    definition: "An Islamic state led by a caliph, a political and religious leader considered the successor to the Prophet Muhammad."
                ),
                GlossaryItem(
                    term: "Crusades",
                    definition: "A series of religious wars during the medieval period in which European Christians tried to capture the Holy Land and other territories from Muslim control."
                ),
                GlossaryItem(
                    term: "Byzantine Empire",
                    definition: "The eastern continuation of the Roman Empire, centered in Constantinople, known for its strong central government, Orthodox Christianity, and preservation of Greco-Roman culture."
                ),
                GlossaryItem(
                    term: "Silk Road",
                    definition: "A vast network of overland trade routes connecting East Asia, the Middle East, and Europe, used to exchange goods like silk, spices, and ideas between civilizations."
                ),
                GlossaryItem(
                    term: "Cultural Diffusion",
                    definition: "The spread of ideas, beliefs, technologies, and customs from one culture to another, often through trade, migration, or conquest."
                ),
                GlossaryItem(
                    term: "Monsoon Winds",
                    definition: "Seasonal wind patterns in the Indian Ocean that traders relied on to travel between East Africa, the Middle East, South Asia, and Southeast Asia."
                ),
                GlossaryItem(
                    term: "Mongol Empire",
                    definition: "A massive empire created by the Mongols in the 13th and 14th centuries, which controlled much of Asia and promoted trade and cultural exchange along the Silk Road."
                ),
                GlossaryItem(
                    term: "Tribute",
                    definition: "Payment made by one ruler or state to another, often as a sign of dependence or submission, in exchange for protection or peace."
                )
            ]
            
            // MARK: - Modern
            
        case .modern:
            return [
                GlossaryItem(
                    term: "Early Modern Period",
                    definition: "The period from roughly 1450 to 1750, marked by global exploration, the rise of powerful states, the spread of new ideas, and the beginnings of a truly connected world."
                ),
                GlossaryItem(
                    term: "Renaissance",
                    definition: "A cultural and intellectual movement that began in Italy around the 1300s and spread across Europe, emphasizing humanism, art, science, and a renewed interest in classical Greece and Rome."
                ),
                GlossaryItem(
                    term: "Reformation",
                    definition: "A religious movement in the 1500s that challenged the authority of the Catholic Church and led to the creation of Protestant Christian churches."
                ),
                GlossaryItem(
                    term: "Absolutism",
                    definition: "A political system in which a ruler, such as a king or queen, holds almost complete power and claims to rule by divine right or unquestioned authority."
                ),
                GlossaryItem(
                    term: "Scientific Revolution",
                    definition: "A period in the 1500s and 1600s when scientists began to rely on observation, experimentation, and reason, leading to major advances in physics, astronomy, biology, and other fields."
                ),
                GlossaryItem(
                    term: "Enlightenment",
                    definition: "An intellectual movement in the 1600s and 1700s that emphasized reason, individual rights, and skepticism of traditional authority, influencing revolutions and modern political thought."
                ),
                GlossaryItem(
                    term: "Capitalism",
                    definition: "An economic system in which individuals and private businesses own property and operate for profit, with prices and production largely determined by competition in the market."
                ),
                GlossaryItem(
                    term: "Mercantilism",
                    definition: "An economic policy in which governments aimed to increase national wealth by controlling trade, building colonies, and accumulating gold and silver."
                ),
                GlossaryItem(
                    term: "Colonization",
                    definition: "The process by which a powerful country establishes settlements and extends control over foreign lands and peoples."
                ),
                GlossaryItem(
                    term: "Columbian Exchange",
                    definition: "The widespread transfer of plants, animals, diseases, and people between the Americas, Europe, Africa, and Asia after Columbus’s voyages in 1492."
                ),
                GlossaryItem(
                    term: "Atlantic Slave Trade",
                    definition: "The forced transportation of millions of Africans across the Atlantic Ocean to work as enslaved laborers in the Americas."
                ),
                GlossaryItem(
                    term: "Industrialization",
                    definition: "The transition from hand-made goods and small-scale production to machine-based manufacturing in factories, beginning in the 1700s and 1800s."
                ),
                GlossaryItem(
                    term: "Urbanization",
                    definition: "The growth of cities as people move from rural areas to urban centers in search of jobs, especially during and after industrialization."
                ),
                GlossaryItem(
                    term: "Nationalism",
                    definition: "A strong sense of loyalty and devotion to one’s nation, often combined with the belief that the nation should be independent and politically unified."
                ),
                GlossaryItem(
                    term: "Revolution",
                    definition: "A rapid and often violent change in a country’s political or social system, such as the American Revolution or the French Revolution."
                )
            ]
            
            // MARK: - Contemporary
            
        case .contemporary:
            return [
                GlossaryItem(
                    term: "Contemporary Era",
                    definition: "The period from roughly 1900 to the present, marked by world wars, rapid technological change, globalization, and major social and political transformations."
                ),
                GlossaryItem(
                    term: "Information Age",
                    definition: "The current era in which digital technology, computers, and the internet play a central role in how people work, communicate, and access information."
                ),
                GlossaryItem(
                    term: "Environmentalism",
                    definition: "A social and political movement focused on protecting the natural environment and addressing issues such as pollution, climate change, and habitat destruction."
                ),
                GlossaryItem(
                    term: "World War I",
                    definition: "A global conflict from 1914 to 1918 involving many of the world’s great powers, triggered by tensions in Europe and resulting in massive casualties and political change."
                ),
                GlossaryItem(
                    term: "World War II",
                    definition: "A global war from 1939 to 1945 in which the Axis powers fought the Allied powers, leading to the Holocaust, the use of atomic bombs, and major shifts in global power."
                ),
                GlossaryItem(
                    term: "Totalitarianism",
                    definition: "A form of government in which a single party or leader controls every aspect of public and private life, often using propaganda, censorship, and terror."
                ),
                GlossaryItem(
                    term: "Cold War",
                    definition: "A period of political tension and competition after World War II between the United States and the Soviet Union, marked by nuclear arms races, proxy wars, and ideological conflict, but not direct large-scale fighting between the two superpowers."
                ),
                GlossaryItem(
                    term: "Decolonization",
                    definition: "The process after World War II in which many Asian, African, and Middle Eastern territories gained independence from European colonial powers."
                ),
                GlossaryItem(
                    term: "Genocide",
                    definition: "The deliberate and systematic attempt to destroy a national, ethnic, racial, or religious group, such as the Holocaust during World War II."
                ),
                GlossaryItem(
                    term: "United Nations",
                    definition: "An international organization founded in 1945 to promote peace, security, cooperation, and human rights among member countries."
                ),
                GlossaryItem(
                    term: "Globalization",
                    definition: "The increasing interconnectedness of the world’s economies, cultures, and populations through trade, communication, technology, and migration."
                ),
                GlossaryItem(
                    term: "Nuclear Weapons",
                    definition: "Extremely destructive weapons that release massive energy through nuclear reactions, capable of devastating entire cities and influencing global politics."
                ),
                GlossaryItem(
                    term: "Human Rights",
                    definition: "Basic freedoms and protections that all people are considered to deserve, such as the right to life, free speech, and fair treatment under the law."
                ),
                GlossaryItem(
                    term: "Terrorism",
                    definition: "The use of violence or the threat of violence by non-state groups against civilians to achieve political, religious, or ideological goals."
                )
            ]
        }
    }
}
