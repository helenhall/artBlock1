//
//  HomeView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI

struct HomeView: View {
    let exampleColor : Color = Color(red: 0.13333333333333333, green: 0.4470588235294118, blue: 0.8509803921568627)
    
    
    //    set up styling for nav bar
    init() {
    }
    
    var body: some View {
//        ZStack {
//
//
//            VStack(spacing:0){
//                NavigationBarView()
//                    .padding(.horizontal, 15)
//                                        .padding(.bottom)
//                                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//                                        .background(exampleColor)
//                                        .shadow(color:Color.black.opacity(0.05), radius: 5, x:0, y:5)
//
//                Text("hello")
//            }
//        }
//               .ignoresSafeArea(.all, edges:.top)
//    }//:body
//}//:struct

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
                            Text("Test")
                            padding(.top)
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




                            }//:Zstack
                            .background(.yellow)

                        }//:Scroll H 1
                        .padding()
                            ScrollView(.horizontal){
                                HStack{ Text("The First Tab")
                                    .padding(.top)
                                Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                                    .fontWeight(.black)
                                    .padding([.top, .leading])
                                }
                            }//:Scroll H 2
                            ScrollView(.horizontal){
                                HStack{ Text("The First Tab")
                                    .padding(.top)
                                Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                                    .fontWeight(.black)
                                    .padding([.top, .leading])
                                }
                            }//:Scroll H 3


                        }//: VStack
                    } //:Scroll
                    //            .ignoresSafeArea(.all, edges: .all)
                    .navigationTitle("HomePage")
                    .navigationBarTitleDisplayMode(.large)
                    //        .navigationBarHidden(true)
                    .background(Color.white.ignoresSafeArea(.all, edges:.all))
                }//: Nav


            }//:V


        }//:ZStack
        .ignoresSafeArea(.all, edges:.top)
    }//:end of body
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
