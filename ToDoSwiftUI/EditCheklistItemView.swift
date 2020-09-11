//
//  EditCheklistItemView.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 10.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct EditCheklistItemView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        Form {
            TextField("Name", text: $checklistItem.name)
            Toggle("Complete", isOn: $checklistItem.isChecked)
        }
    }
}

struct EditCheklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditCheklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
    }
}
