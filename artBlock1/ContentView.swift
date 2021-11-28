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
    
    init() {
        UITabBar.appearance().shadowImage = nil
        
    }
    
    var body: some View {
        
        
        TabView (selection:$selection){
            NavigationView {
                Text("The First Tab")
                    .navigationTitle("Title")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(1)
            NavigationView {
                Text("The First Tab")
                    .navigationTitle("Title")
            }
            .tabItem {
                Image(systemName: "lightbulb")
                Text("Ideas")
            }.tag(2)
            NavigationView {
                Text("The First Tab")
                    .navigationTitle("Title")
            }
            .tabItem {
                Image(systemName: "timer")
                Text("Progress")
            }.tag(3)
            NavigationView {
                Text("The First Tab")
                    .navigationTitle("Title")
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


