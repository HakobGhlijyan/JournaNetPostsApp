//
//  EventsView.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

struct Events: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.journaNetBlack.ignoresSafeArea()
                Text("Events").foregroundStyle(.journaNetWhite)
            }
            .navigationTitle("Events")
            .foregroundStyle(.journaNetPrimary)

        }
    }
}

#Preview {
    RootUIView()
}
