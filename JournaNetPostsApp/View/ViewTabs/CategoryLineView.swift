//
//  CategoryLineView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct CategoryLineView: View {
    @State var caterory: String
    @State var enabledCategory: Bool
    
    var body: some View {
        Text(caterory)
            .foregroundStyle(.journaNetWhite)
            .font(.caption)
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .background(
                RoundedRectangle(cornerRadius: 30).foregroundStyle(.journaNetPrimary)
            )
            .opacity(enabledCategory ? 1 : 0.5)
            .onTapGesture {
                enabledCategory.toggle()
            }
    }
}

#Preview {
    ZStack {
        Color.journaNetBlack.ignoresSafeArea()
        VStack {
            CategoryLineView(caterory: "Box", enabledCategory: false)
            CategoryLineView(caterory: "Box", enabledCategory: true)
        }
    }
}
