//
//  DoListApp.swift
//  DoList
//
//  Created by 博滔张 on 2025/4/18.
//

import SwiftUI

@main
struct DoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
