//
//  ListRowView.swift
//  ToDoList
//
//  Created by Andres Pulgarin on 7/3/23.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "this is a title")
    }
}
