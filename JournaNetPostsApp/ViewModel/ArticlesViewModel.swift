//
//  ArticlesAddNewViewModel.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

@MainActor
final class ArticlesViewModel: ObservableObject {
    @Published var headline: String = "" { didSet { validateForm() } }
    @Published var status: String = "" { didSet { validateForm() } }
    @Published var publisher: String = "" { didSet { validateForm() } }
    @Published var acticleText: String = "" { didSet { validateForm() } }
    
    @Published var selectedCategory: CategoryLine? = nil
    @Published var editingArtice: ArticlesModel?
    @Published var infoArtice: ArticlesModel?

    @Published var isDisabled: Bool = true
    
    var isFormValid: Bool {
        !headline.isEmpty && !status.isEmpty && !publisher.isEmpty && !acticleText.isEmpty
    }
    
    func validateForm() {
        isDisabled = !isFormValid
    }
}
