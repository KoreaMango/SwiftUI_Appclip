//
//  ContentView.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/07/31.
//

import SwiftUI

struct ContentView: View {
    @Binding var recipe: [Recipe]
    
    var body: some View {
        List{
            ForEach($recipe) { $recipe in
                NavigationLink(destination: RecipeView(contents:  $recipe.contents,index: 0)){
                    Text("\(recipe.title)")
                }
            }
        }
        .navigationTitle("Recipe")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipe: .constant(Recipe.sampleData))
    }
}
