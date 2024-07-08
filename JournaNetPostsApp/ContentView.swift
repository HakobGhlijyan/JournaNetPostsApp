//
//  ContentView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 08.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        OnboardViewOne()
    }
}

#Preview {
    ContentView()
}


struct OnboardViewOne: View {
    var selection: Int = 1
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack(spacing: 0.0) {
                Image("onbImg1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                
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
    
                HStack {
                    ForEach(1..<4) { item in
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundStyle(selection == item ? .journaNetPrimary : .journaNetPrimary.opacity(0.3))
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                
                Button(action: {

                }, label: {
                    Text("Next")
                        .font(.system(size: 17))
                        .foregroundStyle(.journaNetWhite)
                        .frame(height: 62)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .background(.journaNetPrimary)
                        .cornerRadius(20)
                })
                
                Spacer()
                
            }
        }
    }
}

struct OnboardViewTwo: View {
    var selection: Int = 2
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack(spacing: 0.0) {
                Image("onbImg2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                
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
    
                HStack {
                    ForEach(1..<4) { item in
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundStyle(selection == item ? .journaNetPrimary : .journaNetPrimary.opacity(0.3))
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                
                Button(action: {

                }, label: {
                    Text("Next")
                        .font(.system(size: 17))
                        .foregroundStyle(.journaNetWhite)
                        .frame(height: 62)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .background(.journaNetPrimary)
                        .cornerRadius(20)
                })
                
                Spacer()
                
            }
        }
    }
}

struct OnboardViewThree: View {
    var selection: Int = 3
    
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack(spacing: 0.0) {
                Image("onbImg3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                
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
    
                HStack {
                    ForEach(1..<4) { item in
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundStyle(selection == item ? .journaNetPrimary : .journaNetPrimary.opacity(0.3))
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                
                Button(action: {

                }, label: {
                    Text("Next")
                        .font(.system(size: 17))
                        .foregroundStyle(.journaNetWhite)
                        .frame(height: 62)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .background(.journaNetPrimary)
                        .cornerRadius(20)
                })
                
                Spacer()
                
            }
        }
    }
}

struct OnboardViewLogo: View {
    var body: some View {
        ZStack {
            Color.journaNetBlack.ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 190, height: 190)
                    .padding(.top, 200)
                
                Spacer()
                
                ProgressView(value: 0.6, total: 1.0)
                    .frame(width: 190, height: 8)
                    .cornerRadius(10)
                    .padding(.bottom, 86)
            }
        }
    }
}
