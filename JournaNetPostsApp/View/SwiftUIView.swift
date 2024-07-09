//
//  SwiftUIView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct SwiftUIView: View {
    @AppStorage("currentUserSignIn") private var currentUserSignIn: Bool = false
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack {
                Text("Hello, World!")
                    .foregroundStyle(.white)
                
                Button("Exit") {
                    signOut()
                }
            }
        }
    }
    
    func signOut() {
        withAnimation(.spring()) {
            currentUserSignIn = false
        }
    }
}

#Preview {
    SwiftUIView()
}
