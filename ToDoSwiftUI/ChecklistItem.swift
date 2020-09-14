//
//  checkListItem.swift
//  ToDoSwiftUI
//
//  Created by DenisSuspitsyn on 02.09.2020.
//  Copyright © 2020 Denis Suspicin. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
