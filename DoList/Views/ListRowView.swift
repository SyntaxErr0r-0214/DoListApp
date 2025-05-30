//
//  ListRowView.swift
//  DoList
//
//  Created by 博滔张 on 2025/4/18.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
      ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
      ListRowView(item: ItemModel(title: "This is the second item", isCompleted: true))
    }
}
