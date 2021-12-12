//
//  HomeView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI

struct HomeView2: View {
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    
    
    //    set up styling for nav bar
    init() {
    }
    
    var body: some View {

        ZStack{
//
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
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .frame(width:85, height: 110)
                                    .aspectRatio(contentMode: .fit)
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    
                            }//:Hstack
                                .padding(40)
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
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .frame(width:85, height: 110)
                                            .aspectRatio(contentMode: .fit)
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }//:HStack
                                    .padding(40)
                                    
                                    
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
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .frame(width:85, height: 110)
                                            .aspectRatio(contentMode: .fit)
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }//:HStack
                                    .padding(40)
                                    
                                    
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

struct HomeView2_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2()
    }
}
