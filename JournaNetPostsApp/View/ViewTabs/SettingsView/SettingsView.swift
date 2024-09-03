//
//  SettingsView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

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
            .navigationTitle("Settings")
            .foregroundStyle(.journaNetPrimary)
        }
    }
}


#Preview {
    RootUIView()
}
