//
//  galleryview2.swift
//  artBlock1
//
//  Created by Helen Hall on 12/12/21.
//
//
import SwiftUI


struct galleryview2: View {
    @State var number: String = "New Item Name"
    @State var numberText: String = "Write Item Name Here..."
    @State private var showingImagePicker = false
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @ObservedObject var myProjects: MyProjects
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        NavigationView{
            ZStack{
            Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
            VStack{
                ZStack {
                    
                    Rectangle()
                        .fill(.secondary)
                        .frame(width: 300, height: 300, alignment: .center)
                    
                    Text("Tap for picture")
                        .foregroundColor(.white)
                    
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
                .onTapGesture {
                   showingImagePicker = true
                }
                
        Text("\(number)")
                    .padding(.init(top: 0, leading: 0, bottom: 20, trailing: 0))
                    .font(.title)
                    .foregroundColor(.white)
                    
        TextField("New Gallery Item Name", text: $numberText)
                    .foregroundColor(.white)
//                    .padding()
                Text("Save")
                    .foregroundColor(.white)
        Button(action: {
            number = numberText
            print("hello")
            save()
            numberText = ""
        }) {
            Text("save")
                .frame(width: 100, height: 50, alignment: .center)
                .foregroundColor(.white)
                .padding()
                .font(.title)
            
        }
            }
            .onChange(of: inputImage) { _ in loadImage() }
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
            }
            }
//        .background(.red)
    }

        
    func loadImage() {
        guard let inputImage = inputImage else {return}
        image = Image(uiImage: inputImage)
    }
    
    func save() {
//
    }
    }
//    

