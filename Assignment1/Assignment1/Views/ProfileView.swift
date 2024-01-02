//
//  ProfileView.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 25/12/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ProfileHeaderView(name: "Victoria Robertson", desc: "A mantra goes here", settingButtonAction: {
                
            }, loginButtonAction: {
                
            })
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}


struct ProfileHeaderView: View {
    let name: String
    let desc: String
    
    let settingButtonAction: () -> Void
    let loginButtonAction: () -> Void
    
    var body: some View {
        VStack {
                VStack(spacing: 0) {
                    HStack {
                        Button("Settings") {
                            settingButtonAction()
                        }
                        .foregroundColor(Color.white)
                        .padding()
                        Spacer()
                        
                        Text("Profile")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        
                        Button("Login") {
                            loginButtonAction()
                        }
                        .foregroundColor(Color.white)
                        .padding()
                    }
                    .padding(.top, 44)
                    
                    Image("profile", bundle: .main)
                        .resizable()
                        .frame(width: 158, height: 158)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 5)
                        .padding(.top, 6)
                        .offset(y: 43)
                }
                .background(Color.init(hex: "#5DB075"))
            
            
            Text(name)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding(.top, 60)
            
            Text(desc)
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(Color.black)

        }
    }
}

#Preview {
    ProfileView()
}



