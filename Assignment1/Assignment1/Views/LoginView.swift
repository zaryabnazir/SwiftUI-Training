//
//  ContentView.swift
//  OnBoarding-SwiftUI
//
//  Created by Muhammad Zaryab on 17/12/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    var body: some View {
        VStack {
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.init(hex: "#E8E8E8"))
                .cornerRadius(8)
                .padding([.leading, .trailing])
            
            HStack {
                TextField("Password", text: $email)
                    .padding()
                    .background(Color.init(hex: "#E8E8E8"))
                    .cornerRadius(8)
                Button("Show") {
                    
                }
                .foregroundColor(Color.init(hex: "#5DB075"))
                .padding()
            }
            .background(Color.init(hex: "#E8E8E8"))
            .cornerRadius(8)
            .padding()
            
            VStack {
                
            }
            .frame(height: 100)
            
            HStack {
                Spacer()
                Button("Login") {
                    
                }
                .foregroundColor(.white)
                .frame(height: 51)
                .background(Color.init(hex: "#5DB075"))
                Spacer()
            }
            .background(Color.init(hex: "#5DB075"))
            .cornerRadius(100)
            .padding()
            
            Button("Forgot your password?") {
                
            }
            .foregroundColor(Color.init(hex: "#5DB075"))

            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

