//
//  Model.swift
//  SwiftUIAppClip
//
//  Created by 강민규 on 2022/08/01.
//

import Foundation

class Model: ObservableObject {
    @Published var recipe : [Recipe] =
    [
        Recipe(title: "김치", description: [Content(id: 0, content: "배추 자르기"), Content(id: 1, content: "양념 만들기"), Content(id: 2, content: "양념 바르기"), Content(id: 3, content: "담기")]),
        Recipe(title: "된장찌개", description: [Content(id: 0, content: "물끓이기"), Content(id: 1, content: "간하기"), Content(id: 2, content: "재료 넣기"), Content(id: 3, content: "담기")]),
        Recipe(title: "김밥", description: [Content(id: 0, content: "김 깔기"), Content(id: 1, content: "밥 넣기"), Content(id: 2, content: "속 재료 넣기"), Content(id: 3, content: "말기")])
    ]
}
