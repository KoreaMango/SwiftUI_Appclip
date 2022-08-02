//
//  ContentView.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/07/31.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        RecipeListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipe: .constant(Recipe.sampleData))
    }
}
