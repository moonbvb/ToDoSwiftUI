//
//  RowView.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 11.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    @Binding var checklistItem: ChecklistItem
    @State var editChecklistItemViewIsVisible = false
    
    var body: some View {
        NavigationLink(destination: EditCheklistItemView(checklistItem: $checklistItem)) {
            HStack {
                Text(checklistItem.name)
                Spacer()
                Text(checklistItem.isChecked ? "✅" : "🔲")
            }
        }
    }
    
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
    }
}
