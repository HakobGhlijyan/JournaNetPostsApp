//
//  JournaNetPostsAppApp.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 08.07.2024.
//

import SwiftUI
import SwiftData

@main
struct JournaNetPostsAppApp: App {
    @State private var showLaunchView: Bool = false
    let container: ModelContainer
    
    init() {
        let schema = Schema([ArticlesModel.self])
        let config = ModelConfiguration("Articles", schema: schema)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Could not configure the container")
        }
//        let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "MyBooks.store"))
//        do {
//            container = try ModelContainer(for: Book.self, configurations: config)
//        } catch {
//            fatalError("Could not configure the container")
//        }
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
//        print(URL.documentsDirectory.path())
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                //0
                OnboardViewLogo(showLaunchView: $showLaunchView)
                    .toolbar(.hidden, for: .navigationBar)
                    .zIndex(0.0)
                
                //1
                ZStack {
                    if showLaunchView {
                        IntroView()
                            .transition(AnyTransition.move(edge: .leading))
                    }
                }
                .zIndex(1.0)
            }
//            .modelContainer(for: ArticlesModel.self)
            .modelContainer(container)

        }
    }
}
