//
//  IdeasView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI
import CoreData

class UserPick: ObservableObject{
    @Published var currentFolder: FolderModel = FolderModel(name: "")
}

struct IdeasView: View {
    @ObservedObject var input = UserPick()
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    @ObservedObject var myNotes: MyNotes
//    @State var searchString: String = ""
    @State var newFolderName = ""
    @State var showingPopover = false
    
    var body: some View {
        // https://www.youtube.com/watch?v=6eQUnuvz_Gk
        ZStack(){
            VStack(spacing:0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(exampleColor)
                    .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
                NavigationView{
                    List {
//                        TextField("Search", text: $searchString)
                        Section(header:
                                    Text("On My iPhone")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(alignment:.leading)
                                    .foregroundColor(.black)) {
//                            if myNotes.folders.count > 0 {
//                                FolderCell(name:"All on My iPhone", myNotes: myNotes)
//                            }
                            FolderCell(name: "Project 1", myNotes: myNotes)
                            FolderCell(name: "Project 2", myNotes: myNotes)
                            FolderCell(name: "Miscellaneous", myNotes: myNotes)
                            ForEach (myNotes.folders) { folder in
                                FolderCell(name: folder.name, myNotes: myNotes)
                            }
                            .onDelete(perform: {indexSet in
                                myNotes.folders.remove(atOffsets: indexSet)
                            })
                            //            }
                        }
                                    .textCase(nil)
                        
                        
                    }//:LIST
                    .listStyle(InsetGroupedListStyle())
                    .navigationTitle("Idea Folders")
                    
                    .toolbar {
//
                        ToolbarItemGroup(placement: .bottomBar) {
                            Image(systemName:"doc.badge.plus" )
                                .onTapGesture {
                                    showingPopover.toggle()
                                }
                            Spacer()
//
                        }
                    }//:TOOLBAR
                }//:Navigationview
            }//:VStack
            if showingPopover {
                CreateNewFolder($showingPopover, with: myNotes)//:geo
            }//:end if statement
            
            
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
        
    }//:BODY
}



struct FolderCell: View {
    var name: String
    @ObservedObject var myNotes: MyNotes
    @ObservedObject var input = UserPick()
    
    var body: some View {
        //destination: FolderView(folderName: name)
        NavigationLink(destination: IdeasView2(projectName: name)
                        .navigationTitle(name)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(false)
//                        .navigationBarBackButtonHidden(false)
                        ){
        HStack {
            Image(systemName: "doc.text")
            Text(name)
        }
        }.simultaneousGesture(TapGesture().onEnded{
            input.currentFolder = FolderModel(name: name)
        })
    }
}

struct CreateNewFolder: View {
    @ObservedObject var myNotes: MyNotes
    @Binding var showingPopover: Bool
    @State var newFolderName = ""
    init(_ showingPopover: Binding<Bool>, with myNotes: MyNotes){
        
        self._showingPopover = showingPopover
        self.myNotes = myNotes
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray4))
                    .frame(width:geo.size.width * 0.70, height: geo.size.width * 0.40, alignment:.center)
                VStack{
                    Text("New Project")
                        .font(.headline)
                    Text("Enter a name for this project")
                        .font(.subheadline)
                    Spacer()
                    TextField("Name",text:$newFolderName)
                        .frame(width:200, height:10)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(7)
                    Spacer()
                    Color.gray.frame(width:200, height:CGFloat(1))
                    HStack{
                        Button(action: {showingPopover.toggle()}) {
                            Text("Cancel")
                                .frame(maxWidth:.infinity)
                        }
                        Button(action: {
                            myNotes.folders.append(FolderModel(name: newFolderName))
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

struct IdeasView_Previews: PreviewProvider {
        static var previews: some View {
            let testNotes = MyNotes()
            testNotes.folders = testFolders
            return IdeasView(myNotes: testNotes)
        }
}
