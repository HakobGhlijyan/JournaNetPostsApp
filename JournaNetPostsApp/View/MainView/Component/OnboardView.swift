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
    
    @AppStorage("currentUserSignIn") private var currentUserSignIn: Bool = false

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
}

#Preview {
    OnboardView()
}

//MARK: - Func
extension OnboardView {
    func nextButtonPressed() {
        if onBoardingViewState == 3 && selection == 3 {
            signIn()
        } else {
            withAnimation(.bouncy) {
                onBoardingViewState += 1
                selection += 1
            }
        }
    }
    
    func signIn() {
        withAnimation(.spring()) {
            currentUserSignIn = true
        }
    }
    
    func signOut() {
        withAnimation(.spring()) {
            currentUserSignIn = false
        }
    }
}

//MARK: - Some View
extension OnboardView {
    private var nextButton: some View {
        Text("Next")
            .buttonStyleCustom(isDisabled: false)
            .asButton(.press) {
                nextButtonPressed()
            }
            .padding(.horizontal, 16)
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
