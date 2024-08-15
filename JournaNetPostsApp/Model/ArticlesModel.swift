//
//  ArticlesModel.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct ArticlesModel: Identifiable {
    let id: UUID
    let titleCategory: String
    let subTitleMessages: String
    
    init(id: UUID = UUID(), titleCategory: String, subTitleMessages: String) {
        self.id = id
        self.titleCategory = titleCategory
        self.subTitleMessages = subTitleMessages
    }
}
