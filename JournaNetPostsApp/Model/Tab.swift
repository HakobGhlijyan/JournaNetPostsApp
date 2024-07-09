//
//  Tab.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 09.07.2024.
//

import SwiftUI

enum Tab: String {
    case articles = "Articles"
    case events = "Events"
    case budget = "Budget"
    case posts = "Posts"
    case settings = "Settings"
    
    @ViewBuilder
    var tabContent: some View {
        switch self {
        case .articles:
            Image(systemName: "doc.fill")
            Text(self.rawValue)
        case .events:
            Image(systemName: "trophy.fill")
            Text(self.rawValue)
        case .budget:
            Image(systemName: "dollarsign.circle.fill")
            Text(self.rawValue)
        case .posts:
            Image(systemName: "doc.richtext.fill")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape.fill")
            Text(self.rawValue)
        }
        
    }
}
