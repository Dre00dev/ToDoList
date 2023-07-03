//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Andres Pulgarin on 7/3/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - Data Points
 View - UI
 ViewModel - Manages models for view -- logic
*/

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{  //wraps all of the views with a nav view
                ListView()
            }
        }
    }
}
