//
//  PeriodToolbarMenuView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct PeriodToolbarMenuView: View {
    @EnvironmentObject var historySelection: HistorySelection

    var body: some View {
        Menu {
            ForEach(HistoryPeriod.allCases) { period in
                Button {
                    historySelection.selectedPeriod = period
                } label: {
                    HStack {
                        Text(period.displayName)
                        if period == historySelection.selectedPeriod {
                            Spacer()
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        } label: {
            HStack(spacing: 4) {
                Text(historySelection.selectedPeriod.shortTitle)
                    .font(.subheadline)
                Image(systemName: "chevron.down")
                    .font(.caption)
            }
        }
    }
}

#Preview {
    PeriodToolbarMenuView()
}
