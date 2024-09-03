//
//  BudgetView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct Budget: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                Text("Budget").foregroundStyle(.journaNetWhite)
            }
            .navigationTitle("Budget")
            .foregroundStyle(.journaNetPrimary)

        }
    }
}

#Preview {
    RootUIView()
}
