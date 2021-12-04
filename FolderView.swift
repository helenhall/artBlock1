//
//  FolderView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/4/21.
//

import SwiftUI

struct FolderView: View {
    var folderName: String
    var notes = testNotes
    var body: some View {
        List {
            ForEach(notes) { note in
                Text(note.title)
            }
        }
        .navigationTitle(folderName)
        .listStyle(InsetGroupedListStyle())
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar) {
                Text("\(notes.count) " + "Note:")
                Image(systemName: "square.and.pencil")
            }
        }
    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView(folderName: "Folder Name")
    }
}
