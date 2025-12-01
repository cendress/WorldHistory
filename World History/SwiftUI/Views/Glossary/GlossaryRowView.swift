//
//  GlossaryRowView.swift
//  World History
//
//  Created by Christopher Endress on 11/26/25.
//

import SwiftUI

struct GlossaryRowView: View {
    @Binding var item: GlossaryItem

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(item.term)
                    .font(.headline)
                    .foregroundStyle(Color("TextColor"))

                Spacer()

                Image(systemName: item.isExpanded ? "chevron.up" : "chevron.down")
                    .font(.subheadline)
                    .foregroundStyle(Color("TextColor"))
            }

            if item.isExpanded {
                Text(item.definition)
                    .font(.subheadline)
                    .foregroundStyle(Color("TextColor"))
                    .fixedSize(horizontal: false, vertical: true)
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("BackgroundColor2"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color("TextColor"), lineWidth: 1)
        )
        .shadow(color: Color.black.opacity(0.10), radius: 4, x: 0, y: 2)
        .contentShape(Rectangle())
        .onTapGesture {
            Haptic.light()
            withAnimation(.easeInOut(duration: 0.18)) {
                item.isExpanded.toggle()
            }
        }
    }
}

#Preview {
    GlossaryRowPreviewHost()
}

struct GlossaryRowPreviewHost: View {
    @State private var item = GlossaryItem(
        term: "Example term",
        definition: "This is an example definition that can wrap to multiple lines when expanded."
    )

    var body: some View {
        GlossaryRowView(item: $item)
            .padding()
            .background(Color("BackgroundColor"))
    }
}
