//
//  ArticlesEditView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 03.09.2024.
//

import SwiftUI
import SwiftData

struct ArticlesEditView: View {
    //Save - Context
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = ArticlesViewModel()
    
    var article: ArticlesModel
    
    @State private var headline: String
    @State private var status: String
    @State private var publisher: String
    @State private var acticleText: String
    @State private var titleCategory: String


    init(article: ArticlesModel) {
        self.article = article
        self._headline = State(initialValue: article.headline)
        self._status = State(initialValue: article.status)
        self._publisher = State(initialValue: article.publisher)
        self._acticleText = State(initialValue: article.acticleText)
        self._titleCategory = State(initialValue: article.titleCategory)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 16) {
                        TextField("Headline", text: $headline)
                            .textFieldStyleCustom($headline)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(CategoryLine.allCases, id: \.self) { category in
                                    CategoryLineView(
                                        title: category.rawValue.capitalized,
                                        isSelected: category == viewModel.selectedCategory
                                    )
                                    .onTapGesture {
                                        viewModel.selectedCategory = category
                                        titleCategory = category.rawValue
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.never)
                        .frame(height: 21)
                        
                        TextField("Status", text: $status)
                            .textFieldStyleCustom($status)
                        
                        TextField("Publisher", text: $publisher)
                            .textFieldStyleCustom($publisher)
                        
                        TextEditor(text: $acticleText)
                            .textEditorStyleCustom($acticleText)
                        
                        buttonLayer
                        
                    }
                    .padding()
                    .scrollIndicators(.never)
                }
                .navigationTitle("Edit acticles")

            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Отмена") {
                        dismiss()
                    }
                }
            }
        }
    }

    private var buttonLayer: some View {
        Text("Save")
            .buttonStyleCustom(isDisabled: false)
            .asButton(.press) {
                saveChanges()
                dismiss()
            }
    }
    
    func saveChanges() {
        article.headline = headline
        article.status = status
        article.publisher = publisher
        article.acticleText = acticleText
        article.titleCategory = titleCategory
        
        do {
            try modelContext.save()
        } catch {
            print("Ошибка при сохранении изменений: \(error.localizedDescription)")
        }
    }
}

#Preview {
    let preview = Preview(ArticlesModel.self)
    return  NavigationStack {
        ArticlesEditView(article: ArticlesModel.sampleArticles[7])            .modelContainer(preview.container)
            .preferredColorScheme(.dark)
    }
}
