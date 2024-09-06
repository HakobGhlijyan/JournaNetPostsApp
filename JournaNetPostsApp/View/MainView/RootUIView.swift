//
//  RootUIView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct RootUIView: View {
    @AppStorage("currentUserSignIn") private var currentUserSignIn: Bool = false
    // Active Tab
    @State private var activeTab: Tab = .articles

    var body: some View {
        
        TabView(selection: $activeTab) {
            Articles()
                .tag(Tab.articles)
                .tabItem { Tab.articles.tabContent }
            Events()
                .tag(Tab.events)
                .tabItem { Tab.events.tabContent }
            Budget()
                .tag(Tab.budget)
                .tabItem { Tab.budget.tabContent }
            Posts()
                .tag(Tab.posts)
                .tabItem { Tab.posts.tabContent }
            Settings()
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .preferredColorScheme(.dark)
        .toolbarColorScheme(.dark, for: .navigationBar)
        
    }
}

#Preview {
    RootUIView()
        .modelContainer(for: ArticlesModel.self, inMemory: true)
}
