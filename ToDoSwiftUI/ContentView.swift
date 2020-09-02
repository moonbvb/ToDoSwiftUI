//
//  ContentView.swift
//  ToDoSwiftUI
//
//  Created by DenisSuspitsyn on 26.08.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var checklistItems = [
        ChecklistItem(name: "Walk the dog"),
        ChecklistItem(name: "Brush my teeth"),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice"),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(checklistItems) { checklistItem in
                    HStack {
                        Text(checklistItem.name)
                        Spacer()
                        Text(checklistItem.isChecked ? "✅" : "🔲")
                    }
                }
                .onDelete(perform: deleteListItem)
                .onMove(perform: moveListItem)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear() {
                self.printChecklistContents()
            }
        }
    }
    
    
    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }
    
    func deleteListItem(whichElement: IndexSet) {
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    
    func moveListItem(whichElement: IndexSet, destination: Int) {
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
