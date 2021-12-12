//
//  AddNoteView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/5/21.
//

import SwiftUI

struct AddNoteView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @StateObject var vm = CoreDataViewModel()
    @State var showingPopover = false

    
    var body: some View {
            VStack {
                Text("Add New Note Here")
                TextField("Add New Note Here....", text: $textFieldText)
//                    .padding(.horizontal)
//                    .frame(height:55)
                    .background(Color.white)
                    .cornerRadius(10)
                
                
                //action: saveButtonPressed
                
                Button(action: {
                    guard !textFieldText.isEmpty else {return}
                    vm.addNote(text: textFieldText)
                    textFieldText = ""
                    vm.applyChanges()
//                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                List {
                    ForEach(vm.savedEntities) { entity in
                        Text(entity.name ?? "No name")

                }
            }
//            .padding(14)
            
        }
        
//
        
        .toolbar {
            ToolbarItemGroup(placement:.navigationBarTrailing) {
               EditButton()
            }
            ToolbarItemGroup(placement: .bottomBar) {
                Image(systemName:"folder.badge.plus" )
                    .onTapGesture {
                        showingPopover.toggle()
                    }
                Spacer()
                HStack {
                    Text("")
//                    NavigationLink(destination: AddNoteView()){
                Image(systemName: "square.and.pencil")
                }
                }
            }//:Toolbar
        }//:VSTack
//    if showingPopover {
//        CreateNewIdea($showingPopover)
//    }//:end if
    
}

    
//    func saveButtonPressed() {
//        listViewModel.addNote(title: textFieldText)
//        presentationMode.wrappedValue.dismiss()
//    }


struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddNoteView()
        }
        .environmentObject(ListViewModel())
    }
}

//copied from folder view
struct CreateNewIdea: View {
//    @ObservedObject var myNotes: MyNotes
    @Binding var showingPopover: Bool
    @State var newNoteName = ""
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @StateObject var vm = CoreDataViewModel()
    init(_ showingPopover: Binding<Bool>){
        
        self._showingPopover = showingPopover
 
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray4))
                    .frame(width:geo.size.width * 0.70, height: geo.size.width * 0.40, alignment:.center)
                VStack{
                    Text("New Idea")
                        .font(.headline)
                    Text("Enter a name for this Idea")
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
                            guard !textFieldText.isEmpty else {return}
                            vm.addNote(text: textFieldText)
                            textFieldText = ""
                            vm.applyChanges()
                            showingPopover = false
        //                    presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            Text("Save".uppercased())
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height:55)
                                .frame(maxWidth:.infinity)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                        })
                    }//:HStack for rect
                }//:VSTACK for rect
                .frame(width: geo.size.width * 0.70, height: geo.size.width*0.35)
            }//:Zstack for rect
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
        }
    }
}
