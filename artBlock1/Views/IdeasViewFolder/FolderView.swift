//
//  FolderView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/4/21.
//

import SwiftUI
import CoreData
import UIKit



class CoreDataViewModel: ObservableObject {
    let container: NSPersistentContainer
    @Published var savedEntities: [NoteEntity] = []
    @State private var isActive = false
    //https://developer.apple.com/forums/thread/665369
//    @FetchRequest(
//      entity: NoteEntity.entity(),
//      // 3
//      sortDescriptors: [
//        NSSortDescriptor(keyPath: \NoteEntity.name, ascending: true)
//      ]
//    // 4
//    ) var notes: FetchedResults<NoteEntity>
    init() {
        container = NSPersistentContainer(name: "FolderContainer")
        container.loadPersistentStores{ (description, error) in
            if let error = error {
                print("ERROR LOading Core data. \(error)")
            }
        }
        fetchNotes()
    }
    
    func fetchNotes() {
        let request = NSFetchRequest<NoteEntity>(entityName: "NoteEntity")
        
        do {
        savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func addNote(text:String) {
        let newNote = NoteEntity(context: container.viewContext)
        newNote.name = text
//        saveData()
        applyChanges()
    }
    func saveData() {
        do {
        try container.viewContext.save()
            fetchNotes()
        } catch let error {
            print("Error saving. \(error)")
        }
    }
    
    func deleteItem(item: NoteEntity) {
        
    }
    
    func applyChanges() {
        saveData()
        fetchNotes()
    }
}

struct FolderView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @StateObject var vm = CoreDataViewModel()
    var folderName: String
    
    // 1
    

    
    
    
    var body: some View {
        List {
            ForEach(vm.savedEntities) { entity in
                Text(entity.name ?? "No name")
            }
            .onDelete(perform: listViewModel.deleteNote)
        .onMove(perform: listViewModel.moveNote)
        }//:list
        .navigationTitle(folderName)
        .toolbar{
            ToolbarItemGroup(placement:.navigationBarTrailing) {
                EditButton()
            }
        }
        .listStyle(InsetGroupedListStyle())
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar) {
                Text("\(listViewModel.notes.count) " + "Note:")
                NavigationLink(destination: AddNoteView()
                                .navigationTitle("")
                                .navigationBarHidden(true)){
            Image(systemName: "square.and.pencil")
            }
            }//:toolbaritemgroup
        }//:toolbar
    }
    
}//:body



struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
       
        let testNotes = MyNotes()
        testNotes.folders = testFolders
        return FolderView(folderName: "Folder Name")
            .environmentObject(ListViewModel())
    }
}
