//
//  WorldHistoryRootView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

// MARK: - Model



// MARK: - Shared State

final class HistorySelection: ObservableObject {
    @Published var selectedPeriod: HistoryPeriod = .prehistory
}

// MARK: - Root View

struct WorldHistoryRootView: View {
    @StateObject private var historySelection = HistorySelection()

    var body: some View {
        TabView {
            NavigationStack {
                ReadingScreen()
            }
            .tabItem {
                Label("Reading", systemImage: "book")
            }

            NavigationStack {
                VocabularyScreen()
            }
            .tabItem {
                Label("Vocabulary", systemImage: "text.book.closed")
            }

            NavigationStack {
                QuizScreen()
            }
            .tabItem {
                Label("Quiz", systemImage: "questionmark.circle")
            }
        }
        .environmentObject(historySelection)
    }
}

// MARK: - Period Menu (Right Bar Button)

struct PeriodToolbarMenu: View {
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

// MARK: - Screens (Scaffolding Only for Now)

struct ReadingScreen: View {
    @EnvironmentObject var historySelection: HistorySelection

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Step 2: plug your actual reading text here
                Text("Reading content for \(historySelection.selectedPeriod.displayName)")
                    .font(.body)
                    .foregroundColor(.primary)
            }
            .padding()
        }
        .navigationTitle("Reading")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                PeriodToolbarMenu()
            }
        }
    }
}

struct VocabularyScreen: View {
    @EnvironmentObject var historySelection: HistorySelection

    var body: some View {
        // Step 2: we’ll replace this with the styled list + chevron toggles
        Text("Vocabulary for \(historySelection.selectedPeriod.displayName)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
            .navigationTitle("Vocabulary")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenu()
                }
            }
    }
}

struct QuizScreen: View {
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
                    PeriodToolbarMenu()
                }
            }
    }
}

// MARK: - Preview

#Preview {
    WorldHistoryRootView()
}
