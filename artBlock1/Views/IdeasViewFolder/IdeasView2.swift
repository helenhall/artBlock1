//
//  IdeasView2.swift
//  artBlock1
//
//  Created by Helen Hall on 12/12/21.
//
import SwiftUI
import Combine
//https://www.youtube.com/watch?v=a1KuQs5dw24&t=102s

struct IdeasView2: View {
    @ObservedObject var myNotes = MyNotes()
    @EnvironmentObject var listViewModel: ListViewModel
    @State var newToDo: String = ""
    @State var projectName: String
    
    
    var newBar: some View {
        HStack{
            TextField("Enter new idea", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Text("Add new")
            })
        }
    }
    
    func addNewToDo() {
//        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        myNotes.notes.append(NoteModel(title: newToDo))
        listViewModel.addNote(title: newToDo)
        newToDo = ""
    }
    
    var body: some View {
        NavigationView{
            VStack{
                newBar.padding()
                List{
                    ForEach(listViewModel.notes) {
                        note in
                        Text(note.title)
                    }.onMove(perform: listViewModel.moveNote)
                     .onDelete(perform: listViewModel.deleteNote)
                    
//
                }.navigationBarTitle(projectName)
                    .navigationBarItems(trailing: EditButton())
            }
        }
    }
func move(from source: IndexSet, to destination: Int) {
    myNotes.notes.move(fromOffsets: source, toOffset: destination)
}
    func delete(at offsets: IndexSet) {
        myNotes.notes.remove(atOffsets: offsets)
    }
}
