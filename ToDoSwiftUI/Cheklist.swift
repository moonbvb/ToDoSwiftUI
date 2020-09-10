//
//  Cheklist.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 10.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import Foundation

class Checklist: ObservableObject {
    
    @Published var items = [
        ChecklistItem(name: "Walk the dog"),
        ChecklistItem(name: "Brush my teeth"),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice"),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
    ]
    
    func printChecklistContents() {
        for item in items {
            print(item)
        }
        
        print("==================")
    }
    
    func deleteListItem(whichElement: IndexSet) {
        items.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    
    func moveListItem(whichElement: IndexSet, destination: Int) {
        items.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
    
}
