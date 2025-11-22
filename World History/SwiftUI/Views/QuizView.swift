//
//  QuizView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var historySelection: HistorySelection

    var body: some View {
        // Step 2: quiz UI scaffolding will go here
        Text("Quiz for \(historySelection.selectedPeriod.displayName)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
            .navigationTitle("Quiz")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenuView()
                }
            }
    }
}

#Preview {
    QuizView()
}
