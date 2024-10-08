//
//  IntroView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("currentUserSignIn") private var currentUserSignIn: Bool = false
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            if currentUserSignIn {
                RootUIView()
            } else {
                OnboardView()
            }
            
        }
    }
}

#Preview {
    IntroView()
        .modelContainer(for: ArticlesModel.self, inMemory: true)
}
