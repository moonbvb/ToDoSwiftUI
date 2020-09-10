//
//  NewCheklistItemView.swift
//  ToDoSwiftUI
//
//  Created by Denis Suspicin on 10.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import SwiftUI

struct NewCheklistItemView: View {
    var body: some View {
        VStack{
            Text("Add new item")
            Form {
                Text("Enter item name")
                Button(action: {
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
        NewCheklistItemView()
    }
}
