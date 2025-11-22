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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Step 2: plug your actual reading text here
                }
            }
            .navigationTitle(historySelection.selectedPeriod.displayName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenuView()
                }
            }
        }
    }
}

#Preview {
    ReadingView()
}
