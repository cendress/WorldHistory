//
//  HistoryPeriod.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import Foundation

enum HistoryPeriod: String, CaseIterable, Identifiable {
    case prehistory
    case ancientHistory
    case postClassicalEra
    case modern
    case contemporary
    
    var id: Self { self }
    
    var displayName: String {
        switch self {
        case .prehistory:        return "Prehistory"
        case .ancientHistory:    return "Ancient History"
        case .postClassicalEra:  return "Post-Classical Era"
        case .modern:            return "Modern Period"
        case .contemporary:      return "Contemporary Period"
        }
    }
    
    // Short label for the toolbar button
    var shortTitle: String {
        switch self {
        case .prehistory:        return "Prehistory"
        case .ancientHistory:    return "Ancient"
        case .postClassicalEra:  return "Post-Classical"
        case .modern:            return "Modern"
        case .contemporary:      return "Contemporary"
        }
    }
}
