//
//  EmptyQuizView.swift
//  World History
//
//  Created by Christopher Endress on 12/1/25.
//

import SwiftUI

struct EmptyQuizView: View {
    let periodName: String

    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                Text("No quiz questions yet.")
                    .foregroundStyle(Color("TextColor"))
                    .font(.headline)
                    .padding(.top, 8)
                
                Text("Questions for \(periodName) will appear here when they are added.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 48)
        }
    }
}

#Preview {
    EmptyQuizView(periodName: "Prehistory")
}
