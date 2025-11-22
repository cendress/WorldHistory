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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                
            }
            .navigationTitle("Glossary")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenuView()
                }
            }
        }
    }
}
#Preview {
    GlossaryView()
}
