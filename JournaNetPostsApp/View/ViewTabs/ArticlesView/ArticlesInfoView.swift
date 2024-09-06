//
//  ArticlesInfoView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 04.09.2024.
//

import SwiftUI

struct ArticlesInfoView: View {
    @Environment(\.dismiss) private var dismiss
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

                VStack(alignment: .leading) {
                    Text("\(headline)")
                        .font(.title)
                    
                    HStack {
                        Text("\(status)")
                        
                        Spacer()
                        
                        CategoryLineView(
                            title: titleCategory.capitalized,
                            isSelected: true
                        )
                    }
                    
                    Text("\(publisher)")
                    
                    Text("\(acticleText)")
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()

            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                    })
                }
            }
        }
    }
    
}

//#Preview {
//    ArticlesInfoView(article: dev.article)
//        .preferredColorScheme(.dark)
//}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticlesInfoView(article: dev.article)
//            .preferredColorScheme(.dark)
//    }
//}
