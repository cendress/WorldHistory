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
        case .prehistory:
            return [
                GlossaryItem(term: "Hunter-Gatherer",
                             definition: "Definition for Hunter-Gatherer goes here."),
                GlossaryItem(term: "Neolithic",
                             definition: "Definition for Neolithic goes here.")
            ]
        case .ancientHistory:
            return [
                GlossaryItem(term: "City-State",
                             definition: "Definition for City-State goes here."),
                GlossaryItem(term: "Empire",
                             definition: "Definition for Empire goes here.")
            ]
        case .postClassicalEra:
            return [
                GlossaryItem(term: "Feudalism",
                             definition: "Definition for Feudalism goes here."),
                GlossaryItem(term: "Silk Road",
                             definition: "Definition for Silk Road goes here.")
            ]
        case .modern:
            return [
                GlossaryItem(term: "Industrialization",
                             definition: "Definition for Industrialization goes here."),
                GlossaryItem(term: "Nation-State",
                             definition: "Definition for Nation-State goes here.")
            ]
        case .contemporary:
            return [
                GlossaryItem(term: "Globalization",
                             definition: "Definition for Globalization goes here."),
                GlossaryItem(term: "Cold War",
                             definition: "Definition for Cold War goes here.")
            ]
        }
    }
}
