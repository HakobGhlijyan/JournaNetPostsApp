//
//  RowViewComponent.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct RowViewComponent: View {
    @State var article: ArticlesModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(article.titleCategory.description)
                .foregroundStyle(.journaNetWhite)
                .font(.caption)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(
                    RoundedRectangle(cornerRadius: 30).foregroundStyle(.journaNetPrimary)
                )
            
            Text(article.acticleText)
                .foregroundStyle(.journaNetWhite)
                .font(.system(size: 22))
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity,alignment: .topLeading)
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.journaNetPrimary.opacity(0.15))
        )
        .listRowBackground(Color.clear)
    }
}

//#Preview {
//    RowViewComponent()
//    .preferredColorScheme(.dark)
//}

