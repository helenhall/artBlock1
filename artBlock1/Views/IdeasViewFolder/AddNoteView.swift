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
    var name: String

    
    var body: some View {
       
            VStack {
                VStack{
                    Image(name)
                        .resizable()
                        .frame(width:125, height: 170)
                        .aspectRatio(contentMode: .fit)

                        
                Text("Add Progress for \(name) here")
                    .padding(3)
                TextField("Add New Progress Here....", text: $textFieldText)
                    .padding(20)
//
                    .background(Color.white)
                    .border(.gray, width: 2)
                    .frame(height:90)
                    .foregroundColor(.black)
//                    .cornerRadius(10)
                }
                .padding(.init(top: 20, leading: 20, bottom: 10, trailing: 20))
                
                
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
                        .frame(height:40)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(.init(top: -16, leading: 15, bottom: 0, trailing: 15))
                })
                List {
                    ForEach(vm.savedEntities) { entity in
                        Text(entity.name ?? "No name")

                }
                    .onDelete(perform: {indexSet in
                        vm.savedEntities.remove(atOffsets: indexSet)
//                        vm.saveData()
                    })
                    
            }
//            .padding(14)
//                func removeProgress(at offsets: IndexSet) {
//                    for index in offsets {
//                        let note = vm.savedEntities[index]
//                            vm.delete(note)
//                        }
//                }
        }
        
//
        
//        
//            }//:Toolbar
        }//:VSTack
//    if showingPopover {
//        CreateNewIdea($showingPopover)
//    }//:end if
    
}


    



struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddNoteView(name: "Example Project")
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
//    @EnvironmentObject var listViewModel: ListViewModel
    @StateObject var vm = CoreDataViewModel()
    init(_ showingPopover: Binding<Bool>){
        
        self._showingPopover = showingPopover
//        self.myNotes = myNotes
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
