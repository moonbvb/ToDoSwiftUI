//
//  ChecklistView.swift
//  ToDoSwiftUI
//
//  Created by DenisSuspitsyn on 26.08.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct ChecklistView: View {
    
    // Properties
    // ==========
    
    @ObservedObject var checklist = Checklist()
    
    // User interface content and layout
    var body: some View {
        NavigationView {
            List {
                ForEach(checklist.items) { checklistItem in
                    HStack {
                        Text(checklistItem.name)
                        Spacer()
                        Text(checklistItem.isChecked ? "✅" : "🔲")
                    }
                    .background(Color.white) // This makes the entire row clickable. (Coz background take !view! with white color (lol)
                    .onTapGesture {
                        if let tappedItemIndex = self.checklist.items.firstIndex(where: { $0.id == checklistItem.id
                        }) { self.checklist.items[tappedItemIndex].isChecked.toggle()}
                    }
                }
                .onDelete(perform: checklist.deleteListItem)
                .onMove(perform: checklist.moveListItem)
                
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear() {
                self.checklist.printChecklistContents()
            }
        }
    }
    
    
    // Methods
    // =======
    
    
}

// Preview
// =======

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
