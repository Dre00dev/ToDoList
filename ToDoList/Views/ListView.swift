//
//  ListView.swift
//  ToDoList
//
//  Created by Andres Pulgarin on 7/3/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
    "First",
    "Second",
    "Third",
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self){ item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}


