//
//  progressView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI

struct ProgressView: View {
    @ObservedObject var input = UserPick()
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    @ObservedObject var myProjects: MyProjects
    var name = ""
    
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
                        destination: AddNoteView(name: "Monster Mash")
                            .navigationTitle("Monster Mash")
                        ,
                        label: {
                            ZStack(alignment: .center) {
                                        Color.red
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)

                                        VStack(alignment: .center) {
                                        
                                            Image("Monster Mash")
                                                .resizable()
                                                .frame(width:125, height: 170)
                                                .aspectRatio(contentMode: .fit)
                                                .padding()
                                                
                                            
                                            Text("Monster Mash")
                                                .font(.title)
                                                
                                                .padding(.init(top: 0, leading: 10, bottom: 20, trailing: 0))
                
                                        }
                                    }
                            .padding(20)

                    })
                        .foregroundColor(.white)
                    NavigationLink(
                        destination: AddNoteView(name: "Conehead")
                            .navigationTitle("Conehead")
                        ,
                        label: {
                            ZStack(alignment: .center) {
                                        Color.blue
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)

                                        VStack(alignment: .center) {
                                            Image("Conehead")
                                                .resizable()
                                                .frame(width:125, height: 170)
                                                .aspectRatio(contentMode: .fit)
                                                .padding()
                                                
                                            
                                            Text("Conehead")
                                                .font(.title)
                                                
                                                .padding(.init(top: 0, leading: 10, bottom: 20, trailing: 0))
                                        }
                                    }
                            .padding(20)

                    })
                        .foregroundColor(.white)
                    
                    NavigationLink(
                        destination: AddNoteView(name: "Croissant")
                            .navigationTitle("Croissant")
                            .padding(10)
                        ,
                        label: {
                            ZStack(alignment: .center) {
                                        Color.green
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)

                                        VStack(alignment: .center) {
                                            Image("Croissant")
                                                .resizable()
                                                .frame(width:200, height: 200)
                                                .aspectRatio(contentMode: .fit)
                                                .padding()
                                                
                                            
                                            Text("Croissant")
                                                .font(.title)
                                                
                                                .padding(.init(top: 0, leading: 10, bottom: 20, trailing: 0))
                                        }
                                    }
                            .padding(20)

                    })
                        .foregroundColor(.white)
                    
                    ZStack(alignment: .center) {
                               Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
                        VStack{
                            
                            galleryview2(myProjects: myProjects)
                                
                                
//                                                .frame(width: 400, height: 500, alignment: .center)
//                                                .padding()
                        }
                        .aspectRatio( contentMode: .fit)
//                                    
                        //}
        
                    }
                    .padding(20)
    
                        
    
                }//:scroll
                .navigationTitle("Progress")
            }//:nav view
            
            
        }//:vstack
    }//:zstack
        .ignoresSafeArea(.all, edges: .top)

    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        let testThing = MyProjects()
        testThing.projects = testProjects
        return ProgressView(myProjects: testThing)
    }
}
