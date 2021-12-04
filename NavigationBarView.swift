//
//  NavigationBarView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/2/21.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK - PROPERTIES
    
    //MARK - BODY
    var body: some View {

        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON
            
            Spacer()
            
            LogoView()
            
            Spacer()
        
            
            Button(action:{}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
            })//:Button
        } //: HSTACK
//        .background(Color.purple)
        
        
        //.edgesIgnoringSafeArea([.top])

    }
    
        
}

//MARK - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
