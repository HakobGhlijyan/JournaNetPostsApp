//
//  OnboardView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 08.07.2024.
//

import SwiftUI

struct OnboardView: View {
    @State private var onBoardingViewState: Int = 1
    @State private var selection: Int = 1
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    @Binding var launchUser: Bool
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            ZStack {
                switch onBoardingViewState {
                case 1:
                    onBoardViewOne.ignoresSafeArea().transition(transition)
                case 2:
                    onBoardViewTwo.ignoresSafeArea().transition(transition)
                case 3:
                    onBoardViewThree.ignoresSafeArea().transition(transition)
                default:
                    EmptyView()
                }
                
                VStack {
                    Spacer()
                    nextButton.padding(.bottom, 24)
                }
            }
        }
    }
    
    func nextButtonPressed() {
        if onBoardingViewState == 3 && selection == 3 {
            launchUser = true
        } else {
            withAnimation(.bouncy) {
                onBoardingViewState += 1
                selection += 1
            }
        }
    }
    
    private var nextButton: some View {
        Button(action: {
            nextButtonPressed()
        }, label: {
            Text("Next")
                .font(.system(size: 17))
                .foregroundStyle(.journaNetWhite)
                .frame(height: 62)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
                .background(.journaNetPrimary)
                .cornerRadius(20)
                .padding(.horizontal, 16)
        })
    }
    
    private var onBoardViewOne: some View {
        VStack(spacing: 0) {
            Image("onbImg1")
                .resizable()
                .frame(height: 575)
            
            cirlceLayer
            
            VStack(alignment: .center, spacing: 10.0) {
                Text("App for the journalists")
                    .foregroundStyle(.journaNetWhite)
                    .font(.system(size: 28, weight: .bold))
                
                Text("Add and manage your arcticles")
                    .foregroundStyle(.journaNetTabDisabled)
                    .font(.system(size: 17, weight: .regular))
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.bottom, 32)

            Spacer()
        }
    }
    
    private var onBoardViewTwo: some View {
        VStack(spacing: 0) {
            Image("onbImg2")
                .resizable()
                .frame(height: 575)
            
            cirlceLayer
            
            VStack(alignment: .center, spacing: 10.0) {
                Text("Manage your budget")
                    .foregroundStyle(.journaNetWhite)
                    .font(.system(size: 28, weight: .bold))
                
                Text("Add your statistics and earn more")
                    .foregroundStyle(.journaNetTabDisabled)
                    .font(.system(size: 17, weight: .regular))
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.bottom, 32)

            Spacer()
        }
    }
    
    private var onBoardViewThree: some View {
        VStack(spacing: 0) {
            Image("onbImg3")
                .resizable()
                .frame(height: 575)
            
            cirlceLayer
            
            VStack(alignment: .center, spacing: 10.0) {
                Text("Smart notes")
                    .foregroundStyle(.journaNetWhite)
                    .font(.system(size: 28, weight: .bold))
                
                Text("Integrated notes to help you in the events")
                    .foregroundStyle(.journaNetTabDisabled)
                    .font(.system(size: 17, weight: .regular))
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.bottom, 32)

            Spacer()
        }
    }
    
    private var cirlceLayer: some View {
        HStack {
            ForEach(1..<4) { item in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(selection == item ? .journaNetPrimary : .journaNetPrimary.opacity(0.3))
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 44)
        .padding(.bottom, 7)
    }
    
}

#Preview {
    OnboardView(launchUser: .constant(false))
}
