//
//  ArticlesView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct Articles: View {
    @State private var articlesArray: [ArticlesModel] = [
        ArticlesModel(titleCategory: "Football", subTitleMessages: "How Falcons stay on the top after 15 years"),
        ArticlesModel(titleCategory: "Bascketball", subTitleMessages: "How Falcons stay on the top after 16 years"),
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                if !articlesArray.isEmpty {
                    ScrollView {
                        ForEach(articlesArray) { article in
                            RowViewComponent(titleCategory: article.titleCategory, subTitleMessages: article.subTitleMessages)
                        }
                    }
                } else {
                    VStack {
                        VStack {
                            Text("No articles added")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.journaNetWhite)
                            Text("Add an article with the plus icon above")
                                .font(.title3)
                                .foregroundStyle(.journaNetTabDisabled)
                        }
                        .padding(.top, 180)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }
                
                
            }
            .navigationTitle("Articles")
            .foregroundStyle(.journaNetPrimary)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        let newArticle = ArticlesModel(titleCategory: "Football", subTitleMessages: "How Falcons stay on the top after 15 years")
                        articlesArray.append(newArticle)
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
