//
//  ArticlesView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct Articles: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                ScrollView {
                    ForEach(0..<20) { item in
                        row
                    }
                }
            }
            .navigationTitle("Articles")
            .foregroundStyle(.journaNetPrimary)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(.journaNetPrimary)
                    })
                }
            }
        }
        
    }
}

#Preview {
    RootUIView()
}

extension Articles {
    private var row: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("basketball")
                .foregroundStyle(.journaNetWhite)
                .font(.caption)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(
                    RoundedRectangle(cornerRadius: 30).foregroundStyle(.journaNetPrimary)
                )
            
            Text("How Falcons stay on the top after 15 years")
                .foregroundStyle(.journaNetWhite)
                .font(.system(size: 22))
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.journaNetPrimary.opacity(0.15))
        )
        .padding(.horizontal, 16)
    }
}
