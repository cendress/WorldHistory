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
                    prompt: "Prehistory refers to the time period before what major development?",
                    choices: [
                        "The invention of writing",
                        "The discovery of fire",
                        "The rise of cities",
                        "The beginning of farming"
                    ],
                    correctIndex: 0,
                    explanation: "Prehistory is the time before written records; history begins when we have writing."
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
                    explanation: "Artifacts, fossils, and other archaeological evidence help us reconstruct prehistoric life."
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
