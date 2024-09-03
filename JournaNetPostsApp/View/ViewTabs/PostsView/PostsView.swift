//
//  PostsView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct Posts: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                Text("Posts").foregroundStyle(.journaNetWhite)
            }
            .navigationTitle("Posts")
            .foregroundStyle(.journaNetPrimary)
        }
    }
}

#Preview {
    RootUIView()
}
