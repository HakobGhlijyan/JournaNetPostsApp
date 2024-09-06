//
//  DeveloperPreview.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 04.09.2024.
//

import SwiftUI
import SwiftData

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

@MainActor
class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() { }
    
    let articlesVM = ArticlesViewModel()
    
    let article = ArticlesModel(
        titleCategory: "football",
        headline: "New era of football",
        status: "Writing",
        publisher: "Post in Facebook",
        acticleText: "Lorem ipsum dolor sit amet consectetur. Sit sed at quis quis volutpat id facilisi sagittis turpis. Sit turpis arcu ut elementum duis non. Sapien enim orci ut risus metus tellus sed consectetur. Congue nisi egestas quisque ultricies libero pretium.",
        dateCreated: .now
    )
        

}
