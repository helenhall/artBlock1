//
//  MyNotes.swift
//  artBlock1
//
//  Created by Helen Hall on 12/3/21.
//

import Foundation

class MyNotes: ObservableObject {
    @Published var folders = [Folder]()
}

struct Folder: Identifiable{
    var name: String
    var id = UUID()
    var notes: [Note] = testNotes
}
struct Note: Identifiable {
    var id = UUID()
    var title: String
    var noteText: String = ""
}
var testFolders = [
    Folder(name: "Folder1"),
    Folder(name: "Folder2")
]

var testNotes = [
    Note(title: "Notes1"),
    Note(title: "Notes2")
]
