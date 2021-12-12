//
//  InsideFolderView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/11/21.
//

import SwiftUI
import CoreData

//class UserPickNote: ObservableObject {
//    var currentNote: NoteModel
//}

struct InsideFolderView: View {
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    @ObservedObject var myNotes: MyNotes
    @State var searchString: String = ""
    @State var newNoteName = ""
    @State var showingPopover = false
    @State var input: FolderModel

//    @State var folderInput:
    
    var body: some View {
        // https://www.youtube.com/watch?v=6eQUnuvz_Gk
        
        ZStack(){
            VStack(spacing:0){
//                NavigationBarView()
//                    .padding(.horizontal, 15)
//                    .padding(.bottom)
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//                    .background(exampleColor)
//                    .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
                NavigationView{
                    

                        
                    List {
                        TextField("Search", text: $searchString)
                        Section(header:
                                    Text("On My iPhone")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(alignment:.leading)
                                    .foregroundColor(.black)) {
                            if myNotes.folders.count > 0 {
                                NoteCell(input: input, name:"All on My iPhone")
                            }
                            NoteCell(input: input, name: "Example 1")
                            NoteCell(input: input, name: "Example 2")
                            ForEach (input.notes) { note in
                                NoteCell(input: input, name: note.title)
                            }
                            .onDelete(perform: {indexSet in
                                input.notes.remove(atOffsets: indexSet)
                            })
                            //            }
                        }
                                    .textCase(nil)
                        
                        
                    }//:LIST
                    .listStyle(InsetGroupedListStyle())
                    .navigationBarTitle(input.name)
                    .navigationBarHidden(false)
                    
                    
                    .toolbar {
//                        ToolbarItemGroup(placement:.navigationBarTrailing) {
//                           EditButton()
//                        }
                        ToolbarItemGroup(placement: .bottomBar) {
                            Image(systemName:"doc.badge.plus" )
                                .onTapGesture {
                                    showingPopover.toggle()
                                }
                            Spacer()
                            HStack {
                                Text("")
                                NavigationLink(destination: AddNoteView()
                                                ){
                            Image(systemName: "square.and.pencil")
                            }
                            }
                        }
                    }//:TOOLBAR
//                    .navigationBarTitle("hhh")
//                    .navigationBarHidden(true)

                }//:Navigationview
                .navigationBarTitle("Ideas")
//                .navigationBarHidden(true)
                
                
            }//:VStack
            
            if showingPopover {
                CreateNewNote($showingPopover, with: myNotes)//:geo
            }//:end if statement
                
            
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarHidden(true)
        
    }//:BODY
        
    
}



struct NoteCell: View {
    @State var input: FolderModel
//    @ObservedObject var myNotes: MyNotes

    var name: String
    var body: some View {
        //destination: FolderView(folderName: name)
        NavigationLink(destination: NoteView(input: input)
                        .navigationTitle(name)){
        HStack {
            Image(systemName: "doc")
            Text(name)
        }
    }
    }
}

struct CreateNewNote: View {
    @ObservedObject var myNotes: MyNotes
    @Binding var showingPopover: Bool
    @State var newNoteName = ""
//    @State var input: FolderModel
    init(_ showingPopover: Binding<Bool>, with myNotes: MyNotes){
        
        self._showingPopover = showingPopover
        self.myNotes = myNotes
//        self.input = FolderModel(name: "", notes: testNotes)
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray4))
                    .frame(width:geo.size.width * 0.70, height: geo.size.width * 0.40, alignment:.center)
                VStack{
                    Text("New idea")
                        .font(.headline)
                    Text("Enter a name for this idea")
                        .font(.subheadline)
                    Spacer()
                    TextField("Name",text:$newNoteName)
                        .frame(width:200, height:10)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(7)
                    Spacer()
                    Color.gray.frame(width:200, height:CGFloat(1))
                    HStack{
                        Button(action: {print("Cancel")}) {
                            Text("Cancel")
                                .frame(maxWidth:.infinity)
                        }
                        Button(action: {
                            myNotes.notes.append(NoteModel(title: newNoteName))
                            showingPopover.toggle()
                        }) {
                            Text("Save")
                                .frame(maxWidth:.infinity)
                        }
                    }//:HStack for rect
                }//:VSTACK for rect
                .frame(width: geo.size.width * 0.70, height: geo.size.width*0.35)
            }//:Zstack for rect
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
        }
    }
}

struct InsideFolderView_Previews: PreviewProvider {
        static var previews: some View {
            let testNotes = MyNotes()
            testNotes.folders = testFolders
            return IdeasView(myNotes: testNotes)
        }
}

func createFolderNote (_folder: FolderModel) {
    @State var input: FolderModel
    @ObservedObject var myNotes: MyNotes
    @State var newNoteName = ""

//    input.notes.append(NoteModel(title: newNoteName))
    
    
}
