//
//  HomeView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI

struct HomeView2: View {
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    @ObservedObject var myNotes: MyNotes
    
    
    //    set up styling for nav bar
//    init() {
//    }
    
    var body: some View {

        ZStack{
            VStack(spacing:0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(exampleColor)
                    .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
                NavigationView{
                    ScrollView{
                        VStack(){
                            Text("Ideas - Recent Notes")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(EdgeInsets(top: 15, leading: 25, bottom: -10, trailing: 0))
                        ScrollView(.horizontal){
                            ZStack{
                                HStack(spacing:60){
                                    
                                    NavigationLink(
                                        destination: IdeasView2(projectName: "Project 1")
                                            .navigationBarTitle("Project 1")
                                            .navigationBarTitleDisplayMode(.inline)
                                            .navigationBarHidden(false)//put view definition//put view definition
                                        ,
                                        label: {
                                            VStack{
                                            Image(systemName: "doc.text")
                                                .resizable()
                                                .frame(width:85, height: 110)
                                                .aspectRatio(contentMode: .fit)
                                            Text("Project 1")
                                                    .font(.title)
                                            }

                                    })
                                        .navigationTitle("Home")
                                        .foregroundColor(.white)
                                        .navigationBarHidden(false)
                                    NavigationLink(
                                        destination: IdeasView2(projectName: "Project 2")
                                            .navigationBarTitle("Project 2")
                                            .navigationBarTitleDisplayMode(.inline)
                                            .navigationBarHidden(false)//put view definition
                                        ,
                                        label: {
                                            VStack{
                                            Image(systemName: "doc.text")
                                                .resizable()
                                                .frame(width:85, height: 110)
                                                .aspectRatio(contentMode: .fit)
                                            Text("Project 2")
                                                    .font(.title)
                                            }

                                    })
                                        .navigationTitle("Home")
                                        .foregroundColor(.white)
                                        .navigationBarHidden(false)
                                    NavigationLink(
                                        destination: IdeasView2(projectName: "Miscellaneous")
                                            .navigationBarTitle("Miscellaneous")
                                            .navigationBarTitleDisplayMode(.inline)
                                            .navigationBarHidden(false)//put view definition//put view definition
                                        ,
                                        label: {
                                            VStack{
                                            Image(systemName: "doc.text")
                                                .resizable()
                                                .frame(width:85, height: 110)
                                                .aspectRatio(contentMode: .fit)
                                            Text("Miscellaneous")
                                                    .font(.title)
                                            }
                                    })
                                        .navigationTitle("Home")
                                        .foregroundColor(.white)
                                        .navigationBarHidden(false)
                               
                                    
                            }//:Hstack
                                .padding(30)
//                                .background(.yellow)

//
                            }//:Zstack
                            .background(.yellow)
                            .padding()
//
                        }//:Scroll H 1
//
                            Text("Progress - Recent Posts")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(EdgeInsets(top: 15, leading: 25, bottom: -10, trailing: 0))
                            //part 2
                            ScrollView(.horizontal) {
                                ZStack{
                                    HStack(spacing:60){
                                        NavigationLink(
                                            destination: AddNoteView(name: "Monster Mash")//put view definition
                                                .navigationTitle("Monster Mash")
                                            ,
                                            label: {
                                                VStack{
                                                    Image("Monster Mash")
                                                        .resizable()
                                                        .frame(width:100, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Monster Mash")
                                                        .font(.title)
                                                }
                                        })
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)
                                        NavigationLink(
                                            destination: AddNoteView(name: "Conehead")
                                                .navigationTitle("Conehead")//put view definition
                                            ,
                                            label: {
                                                VStack{
                                                    Image("Conehead")
                                                        .resizable()
                                                        .frame(width:100, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Conehead")
                                                        .font(.title)
                                                }
                                        })
                                        
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)
                                        NavigationLink(
                                            destination: AddNoteView(name: "Croissant")
                                                .navigationTitle("Croissant")//put view definition
                                            ,
                                            label: {
                                                VStack{
                                                    Image("Croissant")
                                                        .resizable()
                                                        .frame(width:140, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Croissant")
                                                        .font(.title)
                                                }
                                        })
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)

                                    }//:HStack
                                    .padding(30)
                                    
                                    
                                }//:Z2
                                .background(.blue)
                                .padding()
                            }//:scroll 2
                            Text("Gallery - Finished Works")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(EdgeInsets(top: 15, leading: 25, bottom: -10, trailing: 0))
//                            part 3
                            ScrollView(.horizontal) {
                                ZStack{
                                    HStack(spacing:60){
                                        NavigationLink(
                                            destination: CircleNumberView(color: .blue, number: 2, name: "Sour", material: "Acrylic paint on canvas", size: "24 x 24", date: "October 12th, 2021")
                                                .navigationTitle("Sour")
                                                .navigationBarTitleDisplayMode(.large)
                                            ,
                                            label: {
                                                VStack{
                                                    Image("Sour")
                                                        .resizable()
                                                        .frame(width:140, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Sour")
                                                        .font(.title)
                                                }
                                        })
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)
                                        NavigationLink(
                                            destination: CircleNumberView(color: .blue, number: 2, name: "apple", material: "Oil paint on canvas", size: "5 x 5", date: "November 1st, 2021")
                                                .navigationTitle("Apple")
                                                .navigationBarTitleDisplayMode(.large)
                                            ,
                                            label: {
                                                VStack{
                                                    Image("apple")
                                                        .resizable()
                                                        .frame(width:140, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Apple")
                                                        .font(.title)
                                                }
                                        })
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)
                                        NavigationLink(
                                            destination: CircleNumberView(color: .blue, number: 2, name: "umami", material: "Acrylic paint on canvas", size: "24 x 24", date: "May 1st, 2020")
                                                .navigationTitle("Umami")
                                                .navigationBarTitleDisplayMode(.large)
                                            ,
                                            label: {
                                                VStack{
                                                    Image("umami")
                                                        .resizable()
                                                        .frame(width:140, height: 140)
                                                        .aspectRatio(contentMode: .fit)
                                                Text("Umami")
                                                        .font(.title)
                                                }
                                        })
                                            .navigationTitle("Home")
                                            .foregroundColor(.white)
                                            .navigationBarHidden(false)
                                    }//:HStack
                                    .padding(30)
                                    
                                    
                                }//:Z2
                                .background(.red)
                                .padding()
                            }//:scroll 2
                            
                            
                            
                            
                        }//: VStack
                    } //:Scroll
//                    //            .ignoresSafeArea(.all, edges: .all)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.large)
//                    //        .navigationBarHidden(true)
//                    .background(Color.white.ignoresSafeArea(.all, edges:.all))
                }//: Nav
//
//
       }//:V
//

        }//:ZStack
        .ignoresSafeArea(.all, edges:.top)
    }//:end of body
}

//struct HomeView2_Previews: PreviewProvider {
//    @ObservedObject var myNotes: MyNotes
//    static var previews: some View {
//        HomeView2(myNotes: [MyNotes])
//    }
//}
