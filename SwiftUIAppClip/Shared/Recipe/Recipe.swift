 //
//  Recipe.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/01.
//

import SwiftUI

struct Recipe: Identifiable, Codable{
 
    var id : Int
    var title: String
    var contents : [Content]
    
    init(id: Int, title: String, contents: [Content] ){
        self.id = id
        self.title = title
        self.contents = contents
    }
}

extension Recipe {
       
    
//    struct Data {
//        var title: String = ""
//        var contents : [Content] = []
//    }
//
//    var data: Data {
//        Data(title: title, contents: contents)
//    }
//
//    init(data: Data) {
//        id =
//        title = data.title
//        contents = data.contents
//
//    }
}


struct Content: Identifiable, Codable {
    let id: Int
    var content: String
    
    init(id: Int, content: String) {
        self.id = id
        self.content = content
    }
}
