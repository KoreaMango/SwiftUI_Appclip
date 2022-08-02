//
//  ContentView.swift
//  Clip
//
//  Created by 강민규 on 2022/07/31.
//

import SwiftUI

struct ContentView: View {
    
    @State var deeplinkRecipeID: Int?
    
    var body: some View {
        RecipeListView()
            .sheet(item: $deeplinkRecipeID, content: { id in
                NavigationView{
                    RecipeView(recipeIndex: id, nextIndex: 0)
                }
            }).onContinueUserActivity(NSUserActivityTypeBrowsingWeb, perform: handleUserActivity)
    }
    
    private func handleUserActivity(_ userActivity: NSUserActivity){
        guard
            let incomingUrl = userActivity.webpageURL,
            let urlComponnents = URLComponents(url: incomingUrl, resolvingAgainstBaseURL: true),
            let queryItems = urlComponnents.queryItems,
            let id = queryItems.first(where: {$0.name == "id"})?.value else {
            deeplinkRecipeID = nil
            return
            }
            deeplinkRecipeID = Int(id)
    }
}

extension Int : Identifiable {
    public var id: Int {
        self
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
