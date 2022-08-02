//
//  recipeView.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/01.
//

import SwiftUI

struct RecipeView: View {
    @StateObject private var store = Model()
    
    var recipeIndex : Int
    var nextIndex: Int
    
    var body: some View {
        if nextIndex == $store.recipe[recipeIndex].contents.count{
            VStack{
                Spacer()
                Text("Fin")
                    .padding()
                Spacer()
            }.navigationTitle(store.recipe[recipeIndex].title)
            .navigationBarTitleDisplayMode(.inline)
                
        } else{
            VStack{
                Spacer()
                Text("\(store.recipe[recipeIndex].contents[nextIndex].content)")
                    .padding()
                Spacer()
                NavigationLink(destination: RecipeView(recipeIndex: recipeIndex, nextIndex: nextIndex + 1)){
                    Text("Next").padding()
                }
                
            }.navigationTitle(store.recipe[recipeIndex].title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct recipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipeIndex: 1, nextIndex: 0)
    }
}
