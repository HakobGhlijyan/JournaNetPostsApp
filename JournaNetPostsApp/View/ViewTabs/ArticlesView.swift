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
                Text("Articles").foregroundStyle(.journaNetWhite)
            }
            .navigationTitle("Articles")
            .foregroundStyle(.journaNetPrimary)
        }
        
    }
}

#Preview {
    RootUIView()
}
