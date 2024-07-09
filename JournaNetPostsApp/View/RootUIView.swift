//
//  SwiftUIView.swift
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
}

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
struct Events: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                Text("Events").foregroundStyle(.journaNetWhite)
            }
        }
    }
}
struct Budget: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                Text("Budget").foregroundStyle(.journaNetWhite)
            }
        }
    }
}
struct Posts: View {
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            Text("Posts").foregroundStyle(.journaNetWhite)
        }
    }
}
struct Settings: View {
    @AppStorage("currentUserSignIn") private var currentUserSignIn: Bool = false
    
    func signOut() {
        withAnimation(.spring()) {
            currentUserSignIn = false
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                VStack {
                    Text("Settings").foregroundStyle(.journaNetWhite)
                    Button("Exit") {
                        signOut()
                    }
                }
            }
        }
    }
}
