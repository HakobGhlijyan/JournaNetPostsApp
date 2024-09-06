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
    //@Query private var articles: [ArticlesModel] = []
    @Query(sort: \ArticlesModel.dateCreated, order: .reverse, animation: .bouncy) private var articles: [ArticlesModel] = []
    
    //Save - Context
    @Environment(\.modelContext) private var modelContext
    @StateObject private var viewModel = ArticlesViewModel()
    @State private var showAddNewArtice = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                
                if articles.isEmpty {
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
                } else {
                    List(articles) { article in
                        RowViewComponent(article: article)
                            .onTapGesture {
                                viewModel.infoArtice = article
                            }
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button("Delete", role: .destructive) {
                                    modelContext.delete(article)
                                }
                            }
                            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                                Button("Edit", role: .cancel) {
                                    viewModel.editingArtice = article
                                }
                            }
                    }
                    .scrollContentBackground(.hidden)
                    .listStyle(.inset)
                    
                }
            }
            .navigationTitle("Articles")
            .foregroundStyle(.journaNetPrimary)
            .sheet(isPresented: $showAddNewArtice) {
                ArticlesAddNewView()
            }
            .sheet(item: $viewModel.editingArtice) { article in
                ArticlesEditView(article: article)
            }
            .sheet(item: $viewModel.infoArtice) { article in
                ArticlesInfoView(article: article)
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
