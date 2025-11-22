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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                
            }
            .navigationTitle("Quiz")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenuView()
                }
            }
        }
    }
}

#Preview {
    QuizView()
}
