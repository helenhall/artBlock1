//
//  MyNotes.swift
//  artBlock1
//
//  Created by Helen Hall on 12/3/21.
//

import Foundation
import SwiftUI
import CoreData


class MyNotes: ObservableObject {
    @Published var folders = [FolderModel]()
    @Published var notes = [NoteModel]()
}

struct FolderModel: Identifiable{
    var name: String
    var id = UUID()
//    var notes: [NoteModel] = testNotes
}
struct NoteModel: Identifiable {
    var id = UUID()
    var title: String
    var noteText: String = ""
}
var testFolders = [
    FolderModel(name: "Folder1"),
    FolderModel(name: "Folder2")
]

var testNotes = [
    NoteModel(title: "Notes 1", noteText: "Example text here"),
    NoteModel(title: "Notes 2", noteText: "Example text here")
]
