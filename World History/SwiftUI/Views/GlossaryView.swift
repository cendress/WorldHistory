//
//  VocabularyView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct GlossaryView: View {
    @EnvironmentObject var historySelection: HistorySelection
    
    var body: some View {
        VStack {
            
        }
        .navigationTitle("Glossary")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                PeriodToolbarMenuView()
            }
        }
    }
}
#Preview {
    GlossaryView()
}
