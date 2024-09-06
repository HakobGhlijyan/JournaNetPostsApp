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
    var titleCategory: String
    var status: String
    var publisher: String
    var acticleText: String
    var dateCreated: Date
    
    init(id: UUID = UUID(), titleCategory: String, headline: String, status: String, publisher: String, acticleText: String, dateCreated: Date = Date()) {
        self.id = id
        self.titleCategory = titleCategory
        self.headline = headline
        self.status = status
        self.publisher = publisher
        self.acticleText = acticleText
        self.dateCreated = dateCreated
    }
}



