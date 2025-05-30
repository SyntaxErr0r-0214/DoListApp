//
//  ItemModel.swift
//  DoList
//
//  Created by 博滔张 on 2025/4/18.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable {
    let id: String
    var title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
