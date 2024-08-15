//
//  OnboardViewLogo.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 08.07.2024.
//

import SwiftUI

struct OnboardViewLogo: View {
    @State private var value: Double = 0
    @State private var total: Double = 100
   
    //TIMER PUBLISHER
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @Binding var showLaunchView: Bool

    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 190, height: 190)
                    .padding(.top, 200)
                
                Spacer()
                            
                ProgressView(value: value, total: total)
                    .frame(width: 190, height: 8)
                    .cornerRadius(10)
                    .padding(.bottom, 86)
            }
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.bouncy) {
                if value == total {
                    showLaunchView = true
                } else {
                    value += 5
                }
            }
        })
    }
}


#Preview {
    OnboardViewLogo(showLaunchView: .constant(false))
}
