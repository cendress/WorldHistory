//
//  VocabularyView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct GlossaryView: View {
    @EnvironmentObject var historySelection: HistorySelection
    @State private var glossaryItems: [GlossaryItem] = []

    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            List {
                Section {
                    ForEach($glossaryItems, id: \.self) { $item in
                        GlossaryRowView(item: $item)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
        }
        .navigationTitle("Glossary")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                PeriodToolbarMenuView()
            }
        }
        .onAppear {
            glossaryItems = GlossaryContent.items(for: historySelection.selectedPeriod)
        }
        .onChange(of: historySelection.selectedPeriod) { newValue in
            glossaryItems = GlossaryContent.items(for: newValue)
        }
    }
}

#Preview {
    GlossaryView()
        .environmentObject(HistorySelection())
}
