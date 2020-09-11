//
//  NewCheklistItemView.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 10.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct NewCheklistItemView: View {
    
    // Properties
    // ==========
    
    @State var newItemName = ""
    @Environment(\.presentationMode) var presentationMode
    var checklist: Checklist
    
    // User intarface content and layout
    var body: some View {
        VStack{
            Text("Add new item")
            Form {
                TextField("Enter item name here", text: $newItemName)
                Button(action: {
                    let newChecklistItem = ChecklistItem(name: self.newItemName)
                    self.checklist.items.append(newChecklistItem)
                    self.presentationMode.wrappedValue.dismiss()
                    
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add new item")
                    }   
                }
                .disabled(newItemName.count == 0)
            }
            Text("Swipe down to cancel.")
        }
    }
}

struct NewCheklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewCheklistItemView(checklist: Checklist())
    }
}
