//
//  AddView.swift
//  ToDoList
//
//  Created by Andres Pulgarin on 7/3/23.
//

import SwiftUI

struct AddView: View {
    var backgroundColor = Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type Something Here", text:$textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(backgroundColor)
                    .cornerRadius(10)
                
                Button(action: {
                    //to be added later
                },
                       label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        
        .navigationTitle("Add an Item ✍🏽")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
