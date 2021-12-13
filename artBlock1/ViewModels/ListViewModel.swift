//
//  ListViewModel.swift
//  artBlock1
//
//  Created by Helen Hall on 12/5/21.
//

import Foundation
import SwiftUI

class ListViewModel: ObservableObject {
    
    @Published var notes: [NoteModel] = []
    
    init() {
        getNotes()
    }
    
    func getNotes() {
        let newNotes = [
            NoteModel(title: "Example idea: Sketch of dog"),
            NoteModel(title: "Example idea: Watercolor?")
        ]
        notes.append(contentsOf: newNotes)
    }
    func deleteNote(indexSet: IndexSet) {
            notes.remove(atOffsets: indexSet)
        }
    func moveNote(from: IndexSet, to:Int) {
        notes.move(fromOffsets: from, toOffset: to)
    }
    
    func addNote(title: String) {
        let newNote = NoteModel(title:title)
        notes.append(newNote)
    }
    
    func updateNote(note: NoteModel) {
        if let index = notes.firstIndex(where: { $0.id == note.id}) {
//            notes[index] = note.updateCompletion()
        }
    }
    
}
