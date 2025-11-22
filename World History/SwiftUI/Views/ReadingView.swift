//
//  ReadingView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct ReadingView: View {
    @EnvironmentObject var historySelection: HistorySelection

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Step 2: plug your actual reading text here
                Text("")
                    .font(.body)
                    .foregroundColor(.primary)
            }
            .padding()
        }
        .navigationTitle(historySelection.selectedPeriod.displayName)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                PeriodToolbarMenuView()
            }
        }
    }
}

#Preview {
    ReadingView()
}
