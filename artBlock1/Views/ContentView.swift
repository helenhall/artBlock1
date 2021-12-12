//
//  ContentView.swift
//  artBlock1
//
//  Created by Helen Hall on 11/28/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var selection = 1
    //below from youtube for ideas
    @StateObject private var myNotes = MyNotes()
    @StateObject private var myProjects = MyProjects()
    
    init() {
        UITabBar.appearance().shadowImage = nil
        //turns transparent when scrolls need to investigate
        
    }
    
    var body: some View {
    
        
        TabView (selection:$selection){
            
                HomeView2()
                .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(1)
                IdeasView(myNotes: myNotes)
             
            
            .tabItem {
                Image(systemName: "lightbulb")
                Text("Ideas")
            }.tag(2)
            NavigationView {
                ProgressView(myProjects:myProjects)
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "timer")
                Text("Progress")
            }.tag(3)
            NavigationView {
                GalleryView(myProjects:myProjects)
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
//                galleryview2()
            }
            .tabItem {
                Image(systemName: "person")
                Text("Gallery")
            }.tag(4)
        }
        
        
    }
        
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


