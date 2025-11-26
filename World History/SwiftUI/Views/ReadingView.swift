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
                    Text(ReadingContent.text(for: historySelection.selectedPeriod))
                    .foregroundStyle(Color("TextColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 16)
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
