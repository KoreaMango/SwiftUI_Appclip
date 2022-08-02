//
//  RecipeListView.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/02.
//

import SwiftUI

struct RecipeListView: View {
    @StateObject private var store = Model()
    
    var body: some View {
        List{
            ForEach(store.recipe ,id: \.self.id) { recipe in
                NavigationLink(destination: RecipeView(recipeIndex: recipe.id, nextIndex: 0)){
                    Text("\(recipe.title)")
                }
            }
        }
        .navigationTitle("Recipe")
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
