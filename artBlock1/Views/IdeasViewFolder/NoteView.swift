//
//  NoteView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/4/21.
//

import SwiftUI

struct NoteView: View {
    
    @State var title = ""
    @State var input: FolderModel
    @State var noteText = "Example text here"
//    @ObservedObject var myNotes= MyNotes

    var body: some View {
        TextEditor(text: $noteText) //UI Text View
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Done") {
//                        myNotes.$notes.update()
                    }
                }
            }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        return textView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.attributedText = context.coordinator.updateAttributedString()
    }
    class Coordinator: NSObject {
        var parent: TextView
        
        init(_ textView: TextView) {
            self.parent = textView
        }
        func updateAttributedString() -> NSAttributedString{
            let attrs:[NSAttributedString.Key :Any] = [NSAttributedString.Key.font:  UIFont.preferredFont(forTextStyle: .largeTitle)]
            let attrString = NSAttributedString(string: parent.text, attributes:attrs)
            return attrString
            
        }
    }
    typealias UIViewType = UITextView
}
struct NoteView_Previews: PreviewProvider {
//    @ObservedObject var myNotes: MyNotes

    @State var input: FolderModel
//    @State var folders: MyNotes.testFolders
    static var previews: some View {
        NoteView(input: FolderModel(name: "test"))
    }
}
