//
//  RowViewComponent.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct RowViewComponent: View {
    var titleCategory: String = "Basketball"
    var subTitleMessages: String = "How Falcons stay on the top after 15 years"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(titleCategory)
                .foregroundStyle(.journaNetWhite)
                .font(.caption)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(
                    RoundedRectangle(cornerRadius: 30).foregroundStyle(.journaNetPrimary)
                )
            
            Text(subTitleMessages)
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

#Preview {
    RowViewComponent(titleCategory: "Football", subTitleMessages: "How Falcons stay on the top after 15 years")
        .preferredColorScheme(.dark)
}
