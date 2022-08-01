//
//  Recipe.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/01.
//

import SwiftUI

struct Recipe: Identifiable, Codable{
    var id :UUID
    var title: String
    var contents : [Content]
    
    init(id: UUID = UUID(), title: String, description: [Content] ){
        self.id = id
        self.title = title
        self.contents = description
    }
}

extension Recipe {
        
    struct Data {
        var title: String = ""
        var contents : [Content] = []
    }
    
    var data: Data {
        Data(title: title, contents: contents)
    }
    
    init(data: Data) {
        id = UUID()
        title = data.title
        contents = data.contents
            
    }
}

extension Recipe {
    static let sampleData : [Recipe] =
    [
        Recipe(title: "김치", description: [Content(id: 0, content: "배추 자르기"), Content(id: 1, content: "양념 만들기"), Content(id: 2, content: "양념 바르기"), Content(id: 3, content: "담기")]),
        Recipe(title: "된장찌개", description: [Content(id: 0, content: "물끓이기"), Content(id: 1, content: "간하기"), Content(id: 2, content: "재료 넣기"), Content(id: 3, content: "담기")]),
        Recipe(title: "김밥", description: [Content(id: 0, content: "김 깔기"), Content(id: 1, content: "밥 넣기"), Content(id: 2, content: "속 재료 넣기"), Content(id: 3, content: "말기")])

    ]
}

struct Content: Identifiable, Codable {
    let id: Int
    var content: String
    
    init(id: Int, content: String) {
        self.id = id
        self.content = content
    }
}
