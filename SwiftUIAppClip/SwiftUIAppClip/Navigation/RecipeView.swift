//
//  recipeView.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/01.
//

import SwiftUI

struct RecipeView: View {
    @Binding var contents : [Content]
    
    var index : Int
    
    var body: some View {
        if index == contents.count {
            VStack{
                Text("Fin")
                    .padding()
                Spacer()
            }
        } else{
            VStack{
                Text("\(contents[index].content)")
                    .padding()
                Spacer()
                NavigationLink(destination: RecipeView(contents: $contents , index: index + 1)){
                    Text("Next").padding()
                }
                
            }
        }
    }
}

struct recipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(contents: .constant([Content(id : 0,content: "")]), index: 1 )
    }
}
