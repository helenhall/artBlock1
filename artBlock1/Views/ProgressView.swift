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
                    
                    Button(action:{
                        print("hi")
                    }){
                        ZStack(alignment: .center) {
                                    Color.red
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)

                                    VStack(alignment: .center) {
                                        Text("Project 1")
                                            .font(.title)
                                            .padding()
            
                                        Image(systemName: "doc")
                                            .resizable()
                                            .frame(width:85, height: 110)
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                    }
                                }
                        .padding(20)
                    }
                    .foregroundColor(.white)
                    
                    Button(action:{
                        print("hi")
                    }){
                        ZStack(alignment: .center) {
                                    Color.blue
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)

                                    VStack(alignment: .center) {
                                        Text("Project 2")
                                            .font(.title)
                                            .padding()
            
                                        Image(systemName: "doc")
                                            .resizable()
                                            .frame(width:85, height: 110)
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                    }
                                }
                        .padding(20)
                    }
                    .foregroundColor(.white)
                    
                    Button(action:{
                        print("hi")
                    }){
                        ZStack(alignment: .center) {
                                    Color.green
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)

                                    VStack(alignment: .center) {
                                        Text("Project 3")
                                            .font(.title)
                                            .padding()
            
                                        Image(systemName: "doc")
                                            .resizable()
                                            .frame(width:85, height: 110)
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                    }
                                }
                        .padding(20)
                    }
                    .foregroundColor(.white)
                        
    
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
