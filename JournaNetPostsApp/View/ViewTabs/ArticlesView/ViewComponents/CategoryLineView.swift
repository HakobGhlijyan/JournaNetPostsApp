//
//  CategoryLineView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct CategoryLineView: View {
    var title: String
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.caption)
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .themeColor(isSelected: isSelected)
    }
}

extension View {
    func themeColor(isSelected: Bool) -> some View {
        self
            .foregroundStyle(isSelected ? .journaNetWhite : .journaNetWhite.opacity(0.3))
            .background(
                RoundedRectangle(cornerRadius: 30).foregroundStyle(isSelected ? .journaNetPrimary : .journaNetPrimary.opacity(0.3))
            )
    }
}

#Preview {
    ZStack {
        Color.journaNetBlack.ignoresSafeArea()
        
        VStack(spacing: 10) {
            CategoryLineView(title: "Basketball")
            CategoryLineView(title: "Basketball", isSelected: true)
            CategoryLineView(title: "Football")
            CategoryLineView(title: "Football", isSelected: true)
            CategoryLineView(title: "Volleyball")
            CategoryLineView(title: "Volleyball", isSelected: true)
            CategoryLineView(title: "Hockey")
            CategoryLineView(title: "Hockey", isSelected: true)
            CategoryLineView(title: "Box")
            CategoryLineView(title: "Box", isSelected: true)
            CategoryLineView(title: "Golf")
            CategoryLineView(title: "Golf", isSelected: true)
            CategoryLineView(title: "Orther")
            CategoryLineView(title: "Orther", isSelected: true)
        }
    }
}
