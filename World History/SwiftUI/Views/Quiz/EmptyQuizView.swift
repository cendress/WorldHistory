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
        ScrollView {
            VStack(spacing: 16) {
                Text("No quiz questions yet.")
                    .font(.headline)
                    .padding(.top, 8)

                Text("Questions for \(periodName) will appear here when they are added.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    EmptyQuizView(periodName: "Prehistory")
}
