//
//  ArticlesModel.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI
import SwiftData

@Model
final class ArticlesModel: Identifiable {
    let id: UUID
    var headline: String
    var titleCategory: CategoryLine
    var status: String
    var publisher: String
    var acticleText: String
    var dateCreated: Date
    
    init(
        id: UUID = UUID(),
        titleCategory: CategoryLine = .orther,
        headline: String,
        status: String,
        publisher: String,
        acticleText: String,
        dateCreated: Date = Date.now
    ) {
        self.id = id
        self.titleCategory = titleCategory
        self.headline = headline
        self.status = status
        self.publisher = publisher
        self.acticleText = acticleText
        self.dateCreated = dateCreated
    }
}

enum CategoryLine: String, Codable, Identifiable, CaseIterable {
    case basketball, football, volleyball, hockey, box, golf, orther
    
    var id: Self {
        self
    }
    
    var description: String {
        switch self {
        case .basketball:
            "basketball"
        case .football:
            "football"
        case .volleyball:
            "volleyball"
        case .hockey:
            "hockey"
        case .box:
            "box"
        case .golf:
            "golf"
        case .orther:
            "orther"
        }
    }
}
