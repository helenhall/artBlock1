//
//  DataFile.swift
//  artBlock1
//
//  Created by Helen Hall on 12/12/21.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id: String = ""
    
    var toDoItem = String()
}


class TaskStore: ObservableObject {
    @Published var tasks = [Task]()
}
