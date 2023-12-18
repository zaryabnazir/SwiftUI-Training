//
//  SignUpView.swift
//  OnBoarding-SwiftUI
//
//  Created by Muhammad Zaryab on 18/12/2023.
//
import SwiftUI
struct SignUpView: View {
    @State private var email = ""
    @State private var checked = false
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    Image("iconCross", bundle: .main)
                }
                .foregroundColor(Color.init(hex: "#5DB075"))
                .padding()
                Spacer()
                
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                
                
                Button("Login") {
                    
                }
                .foregroundColor(Color.init(hex: "#5DB075"))
                .padding()
            }
            
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.init(hex: "#E8E8E8"))
                .cornerRadius(8)
                .padding([.leading, .trailing, .bottom])
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.init(hex: "#E8E8E8"))
                .cornerRadius(8)
                .padding([.leading, .trailing, .bottom])
            
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
            .padding([.leading, .trailing])
            
            VStack {
                
            }
            .frame(height: 20)
            
            HStack {
                CheckBoxView(checked: $checked)

                Text("I would like to receive your news letter and other promotional infromation")
                    .foregroundColor(Color.init(hex: "#66666"))
                    .font(.body)
                
                Spacer()
            }
            .padding()
            
            HStack {
                Spacer()
                Button("Sign Up") {
                    
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
    SignUpView()
}


