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
    @StateObject private var viewModel = ArticlesAddNewViewModel()
    
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
                                ForEach(CategoryLine.allCases, id: \.rawValue) { caterory in
                                    CategoryLineView(caterory: caterory.rawValue, enabledCategory: true)
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
        }
    }

    private var buttonLayer: some View {
        Text("Add")
            .buttonStyleCustom(isDisabled: viewModel.isDisabled)
            .asButton(.press) {
                let newArticle = ArticlesModel(
                    titleCategory: "Basketball",
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
                
                dismiss()
            }
            .disabled(viewModel.isDisabled)
    }

    
}

#Preview {
    ArticlesAddNewView()
        .preferredColorScheme(.dark)
}
