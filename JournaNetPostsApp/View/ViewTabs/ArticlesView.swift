//
//  ArticlesView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI
import SwiftData

struct Articles: View {
    //Array
    @Query private var articles: [ArticlesModel] = []
    //Save - Context
    @Environment(\.modelContext) private var modelContext
    
    @State private var showAddNewArtice = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                
                if !articles.isEmpty {
                    ScrollView {
                        ForEach(articles) { article in
                            RowViewComponent(acticle: article)
                                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                    Button("Delete") {
                                        modelContext.delete(article)
                                    }
                                }
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
            .sheet(isPresented: $showAddNewArtice) {
                ArticlesAddNewView()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showAddNewArtice.toggle()
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
