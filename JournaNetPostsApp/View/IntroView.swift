//
//  IntroView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct IntroView: View {
    @State private var showLaunchView: Bool = false
    @State private var launchUser: Bool = false
    
    var body: some View {
        ZStack {
            //0
            OnboardViewLogo(showLaunchView: $showLaunchView)
                .toolbar(.hidden, for: .navigationBar)
                .zIndex(0.0)
            
            //1
            ZStack {
                if showLaunchView{
                    OnboardView(launchUser: $launchUser)
                        .transition(AnyTransition.move(edge: .leading))
                }
            }
            .zIndex(1.0)
        }
    }
}

#Preview {
    IntroView()
}
