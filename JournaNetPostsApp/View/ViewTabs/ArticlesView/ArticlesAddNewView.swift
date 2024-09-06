//
//  ArticlesAddNewView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI
import SwiftData

struct ArticlesAddNewView: View {
    //Save - Context
    @Environment(\.modelContext) private var modelContext    
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = ArticlesViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 16) {
                        TextField("Headline", text: $viewModel.headline)
                            .textFieldStyleCustom($viewModel.headline)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(CategoryLine.allCases, id: \.self) { category in
                                    CategoryLineView(
                                        title: category.rawValue,
                                        isSelected: category == viewModel.selectedCategory
                                    )
                                    .onTapGesture {
                                        viewModel.selectedCategory = category
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.never)
                        .frame(height: 21)
                        
                        TextField("Status", text: $viewModel.status)
                            .textFieldStyleCustom($viewModel.status)
                        
                        TextField("Publisher", text: $viewModel.publisher)
                            .textFieldStyleCustom($viewModel.publisher)
                        
                        TextEditor(text: $viewModel.acticleText)
                            .textEditorStyleCustom($viewModel.acticleText)
                        
                        buttonLayer
                        
                    }
                    .padding()
                    .scrollIndicators(.never)
                }
                .navigationTitle("New acticles")

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
        Text("Add")
            .buttonStyleCustom(isDisabled: viewModel.isDisabled)
            .asButton(.press) {
                save()
                dismiss()
            }
            .disabled(viewModel.isDisabled)
    }
    
    func save() {
        let newArticle = ArticlesModel(
            titleCategory: viewModel.selectedCategory ?? .orther,
            headline: viewModel.headline,
            status: viewModel.status,
            publisher: viewModel.publisher,
            acticleText: viewModel.acticleText
        )
        modelContext.insert(newArticle)
        
        viewModel.headline = ""
        viewModel.status = ""
        viewModel.publisher = ""
        viewModel.acticleText = ""
        
        do {
            try modelContext.save()
        } catch {
            print("Ошибка при сохранении изменений: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ArticlesAddNewView()
        .preferredColorScheme(.dark)
}
