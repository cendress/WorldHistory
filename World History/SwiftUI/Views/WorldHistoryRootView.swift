//
//  WorldHistoryRootView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

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
                ReadingView()
            }
            .tabItem {
                Button(action: {
                    Haptic.selection()
                }) {
                    Label("Reading", systemImage: "book")
                }
            }
            
            NavigationStack {
                GlossaryView()
            }
            .tabItem {
                Button(action: {
                    Haptic.selection()
                }) {
                    Label("Vocabulary", systemImage: "text.book.closed")
                }
            }
            
            NavigationStack {
                QuizView()
            }
            .tabItem {
                Button(action: {
                    Haptic.selection()
                }) {
                    Label("Quiz", systemImage: "questionmark.circle")
                }
            }
        }
        .tint(Color("BackgroundColor2"))
        .environmentObject(historySelection)
    }
}

// MARK: - Preview

#Preview {
    WorldHistoryRootView()
}
