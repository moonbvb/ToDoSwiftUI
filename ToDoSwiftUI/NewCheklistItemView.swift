//
//  NewCheklistItemView.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 10.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct NewCheklistItemView: View {
    
    @State var newItemName = ""
    var checklist: Checklist
    
    var body: some View {
        VStack{
            Text("Add new item")
            Form {
                TextField("Enter item name here", text: $newItemName)
                Button(action: {
                    let newChecklistItem = ChecklistItem(name: self.newItemName)
                    self.checklist.items.append(newChecklistItem)
                    self.checklist.printChecklistContents()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add new item")
                    }
                }
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
