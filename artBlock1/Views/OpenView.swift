//
//  OpenView.swift
//  artBlock1
//
//  Created by Helen Hall on 12/1/21.
//

import SwiftUI

struct OpenView: View {
    
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack{
                    Picker(selection: $isLoginMode,label: Text("Picker Here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())

                    Button{
                        
                    } label: {
                    Image(systemName: "person.fill")
                        .font(.system(size:64))
                        .padding()
                    }
                    
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                    
                    Button{
                        
                    }label: {
                        HStack{
                            Spacer()
                            Text("Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                
                                
                            Spacer()
                        }.background(Color.blue)
                    }
                }
                .padding()
                
                
            }
            .navigationTitle("Create Account")
        }
    }
}

struct OpenView_Previews: PreviewProvider {
    static var previews: some View {
        OpenView()
    }
}
