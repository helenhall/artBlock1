////
////  GalleryView4.swift
////  artBlock1
////
////  Created by Helen Hall on 12/12/21.
////
////
////  IdeasView.swift
////  artBlock1
////
////  Created by Helen Hall on 12/1/21.
////
//
//import SwiftUI
//import CoreData
////
////class UserPick: ObservableObject{
////    @Published var currentFolder: FolderModel = FolderModel(name: "")
////}
//
//struct GalleryView4: View {
////    @ObservedObject var input = UserPick()
//    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
//    @ObservedObject var myProjects: MyProjects
//    @State var searchString: String = ""
//    @State var newPostName = ""
//    @State var showingPopover = false
//    
//    var body: some View {
//        // https://www.youtube.com/watch?v=6eQUnuvz_Gk
//        ZStack(){
//            VStack(spacing:0){
//                NavigationBarView()
//                    .padding(.horizontal, 15)
//                    .padding(.bottom)
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//                    .background(exampleColor)
//                    .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
//                NavigationView{
//                    List {
//                        
//                        Section(header:
//                                    Text("On My iPhone")
//                                    .font(.title3)
//                                    .fontWeight(.bold)
//                                    .frame(alignment:.leading)
//                                    .foregroundColor(.black)) {
//                            
//                            PostCell(title: "Notes", myProjects: myProjects)
//                            ForEach (myProjects.galleryPosts) { post in
//                                PostCell(title: post.title, myProjects: myProjects)
//                            }
//                            .onDelete(perform: {indexSet in
//                                myProjects.galleryPosts.remove(atOffsets: indexSet)
//                            })
//                            //            }
//                        }
//                                    .textCase(nil)
//                        
//                        
//                    }//:LIST
//                    .listStyle(InsetGroupedListStyle())
//                    .navigationTitle("Gallery")
//                    
//                    .toolbar {
////                        ToolbarItemGroup(placement:.navigationBarTrailing) {
////                           EditButton()
////                        }
//                        ToolbarItemGroup(placement: .bottomBar) {
//                            Image(systemName:"folder.badge.plus" )
//                                .onTapGesture {
//                                    showingPopover.toggle()
//                                }
//                            Spacer()
//                            HStack {
//                                Text("")
////                                NavigationLink(destination: InsideFolderView(myNotes: myNotes, input: input.currentFolder)
////                                                .navigationBarHidden(true)
////                                                .navigationBarTitle("jj")){
////                            Image(systemName: "square.and.pencil")
////                            }
//                            }
//                        }
//                    }//:TOOLBAR
//                }//:Navigationview
//            }//:VStack
//            if showingPopover {
//                CreateNewPost($showingPopover, with: myProjects)//:geo
//            }//:end if statement
//            
//            
//        }//:ZStack
//        .ignoresSafeArea(.all, edges: .top)
//        
//    }//:BODY
//}
//
//
//
//struct PostCell: View {
//    var title: String
//    @ObservedObject var myProjects: MyProjects
////    @ObservedObject var input = UserPick()
//    
//    var body: some View {
//        //destination: FolderView(folderName: name)
//        NavigationLink(destination: CircleNumberView(color: .red, number: 1, name: title, material: "idk", size: "idk", date: "idk")
//                        .navigationTitle("jfhjjjj")
//                        .navigationBarTitleDisplayMode(.inline)
//                        .navigationBarHidden(false)
////                        .navigationBarBackButtonHidden(false)
//                        ){
//        HStack {
//            Image(systemName: "pic")
//            Text(title)
//        }
//        }.simultaneousGesture(TapGesture().onEnded{
////            input.currentFolder = FolderModel(name: name)
//        })
//    }
//}
//
//struct CreateNewPost: View {
//    @ObservedObject var myProjects: MyProjects
//    @Binding var showingPopover: Bool
//    @State var newPostName = ""
//    init(_ showingPopover: Binding<Bool>, with myProjects: MyProjects){
//        
//        self._showingPopover = showingPopover
//        self.myProjects = myProjects
//    }
//    
//    var body: some View {
//        GeometryReader { geo in
//            ZStack{
//                RoundedRectangle(cornerRadius: 7)
//                    .fill(Color(.systemGray4))
//                    .frame(width:geo.size.width * 0.70, height: geo.size.width * 0.40, alignment:.center)
//                VStack{
//                    Text("New Project")
//                        .font(.headline)
//                    Text("Enter a name for this folder")
//                        .font(.subheadline)
//                    Spacer()
//                    TextField("Name",text:$newPostName)
//                        .frame(width:200, height:10)
//                        .padding()
//                        .background(Color(.white))
//                        .cornerRadius(7)
//                    Spacer()
//                    Color.gray.frame(width:200, height:CGFloat(1))
//                    HStack{
//                        Button(action: {print("Cancel")}) {
//                            Text("Cancel")
//                                .frame(maxWidth:.infinity)
//                        }
//                        Button(action: {
//                            myProjects.galleryPosts.append(GalleryPostModel(title: newPostName, image:UIImage(imageLiteralResourceName: "sour")))
//                            showingPopover.toggle()
//                        }) {
//                            Text("Save")
//                                .frame(maxWidth:.infinity)
//                        }
//                    }//:HStack for rect
//                }//:VSTACK for rect
//                .frame(width: geo.size.width * 0.70, height: geo.size.width*0.35)
//            }//:Zstack for rect
//            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//            
//        }
//    }
//}
//
////struct IdeasView_Previews: PreviewProvider {
////        static var previews: some View {
////            let testNotes = MyNotes()
////            testNotes.folders = testFolders
////            return IdeasView(myNotes: testNotes)
////        }
////}
