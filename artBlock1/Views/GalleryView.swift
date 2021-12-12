//
//  GalleryView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//


import SwiftUI

struct GalleryView: View {
    @ObservedObject var input = UserPick()
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    @ObservedObject var myProjects: MyProjects
    @State var name = ""
    var body: some View {
        ZStack{
        VStack(spacing:0) {
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(exampleColor)
                .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
            NavigationView{
                ScrollView{
                    NavigationLink(
                        destination: CircleNumberView(color: .blue, number: 2, name: "Sour")
                            .navigationTitle("Sour")
                            .navigationBarTitleDisplayMode(.large)
                        ,
                        label: {
                            ZStack(alignment: .center) {
                                       Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
                                VStack{
                            Image("Sour")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))                                            .frame(width: 300, height: 300, alignment: .center)
                                
                                Text("Sour")
                                    .padding(.init(top: -20, leading: 0, bottom: 20, trailing: 0))
                                    .font(.title)
                                    .foregroundColor(.white)
                                }
                
                            }
                            .padding(20)

                    })
                    
                    NavigationLink(
                        destination: CircleNumberView(color: .blue, number: 2, name: "apple")
                            .navigationTitle("Apple")
                            .navigationBarTitleDisplayMode(.large)
                        ,
                        label: {
                            ZStack(alignment: .center) {
                                       Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
                                VStack{
                            Image("apple")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))                                            .frame(width: 300, height: 300, alignment: .center)
                                
                                Text("Apple")
                                    .padding(.init(top: -20, leading: 0, bottom: 20, trailing: 0))
                                    .font(.title)
                                    .foregroundColor(.white)
                                }
                
                            }
                            .padding(20)

                    })
                    
                    Button(action:{
                        print("apple")
                        
                    }){
                        ZStack(alignment: .center) {
                                   Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
//                                .frame(width:300, height:300)

                                    VStack(alignment: .center) {
                                        
            
                                        Image("apple")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))
                                            .frame(width: 300, height: 300, alignment: .center)
                                        
                                        Text("Apple")
                                            .padding(.init(top: -20, leading: 0, bottom: 20, trailing: 0))
                                            .font(.title)
                                        
                                    }
                                }
                        .padding(20)
                    }
                    .foregroundColor(.white)
                    
                    Button(action:{
print("umami")
                        
                    }){
                        ZStack(alignment: .center) {
                                   Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
//                                .frame(width:300, height:300)

                                    VStack(alignment: .center) {
                                        
            
                                        Image("umami")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))
                                            .frame(width: 300, height: 300, alignment: .center)
                                        
                                        Text("Project 3")
                                            .padding(.init(top: -20, leading: 0, bottom: 20, trailing: 0))
                                            .font(.title)
                                        
                                    }
                                }
                        .padding(20)
                    }
                    .foregroundColor(.white)
                        
    
                }//:scroll
                .navigationTitle("Gallery")
            }//:nav view
            
            
        }//:vstack
    }//:zstack
        .ignoresSafeArea(.all, edges: .top)

    }
}



struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let testThing = MyProjects()
        testThing.projects = testProjects
        return GalleryView(myProjects: testThing)
    }
}

//func newScreen(name: String) {
//    print(name)
//    NavigationLink("Test", destination: galleryview2(name:name))
//}

//struct newView: View {
//    @State var name: String
//    
//    var body: some View {
//        Text(name)
//    }
//    
//    
//}



struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    var name: String
    
var body: some View {
    ScrollView{
    VStack{

    Image(name)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))                                            .frame(width: 300, height: 300, alignment: .center)
    Text("Material: oil")
    Text("Size: 24 x 24")
    Text("bebooop")
    }
  }
}
    
}
