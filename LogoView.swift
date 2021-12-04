//
//  LogoView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/2/21.
//

import SwiftUI

struct LogoView: View {

    var body: some View {
        
        HStack(spacing:1) {
            Text("art")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .frame(height: 30.0)
            Text("Block")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(height: 30.0)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()

    }
}

