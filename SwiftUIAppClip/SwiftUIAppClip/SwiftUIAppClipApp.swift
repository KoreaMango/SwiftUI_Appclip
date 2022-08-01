//
//  SwiftUIAppClipApp.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/07/31.
//

import SwiftUI

@main
struct SwiftUIAppClipApp: App {
    @StateObject private var store = Model()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(recipe: $store.recipe)
            }
        }
    }
}
