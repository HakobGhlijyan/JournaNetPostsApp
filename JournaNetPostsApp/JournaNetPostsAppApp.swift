//
//  JournaNetPostsAppApp.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 08.07.2024.
//

import SwiftUI

@main
struct JournaNetPostsAppApp: App {
    @State private var showLaunchView: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                //0
                OnboardViewLogo(showLaunchView: $showLaunchView)
                    .toolbar(.hidden, for: .navigationBar)
                    .zIndex(0.0)
                
                //1
                ZStack {
                    if showLaunchView {
                        IntroView()
                            .transition(AnyTransition.move(edge: .leading))
                    }
                }
                .zIndex(1.0)
            }
        }
    }
}
