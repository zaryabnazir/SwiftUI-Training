//
//  ProfileView.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 25/12/2023.
//

import SwiftUI


struct ProfileView: View {
    @State private var selectedTab = "Posts"
    var tabs: [String] = ["Posts", "Photos"]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ProfileHeaderView(name: "Victoria Robertson", desc: "A mantra goes here", settingButtonAction: {
                    
                }, loginButtonAction: {
                    
                })
                
                Picker("Select", selection: $selectedTab) {
                    ForEach(tabs, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                if selectedTab == "Posts" {
                    ScrollView {
                        ForEach((1...10), id: \.self) {
                            PostView(postTitle: "Post \($0)")
                                .padding([.top, .bottom], 8)
                        }
                    }
                } else {
                    PhotosView()
                }
                
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

//MARK: - PhotosView

struct PhotosView: View {
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader(content: { geometry in
                Image("")
                    .resizable()
                    .background(Color(hex: "#F6F6F6"))
                    .frame(width: geometry.size.width - 32, height: geometry.size.width/1.5)
                    .cornerRadius(8)
                    .padding()
                    
            })
        }
    }
}

//MARK: - PostView
struct PostView: View {
    let postTitle: String
    var time = "8m ago"
    var desc = "He'll want to use your yacht, and I don't want this thing smelling like fish."
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .top) {
                Image("")
                    .resizable()
                    .background(Color(hex: "#F6F6F6"))
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
    
                VStack(spacing: 0) {
                    HStack(alignment: .top) {
                        Text(postTitle)
                            .font(Font.custom("Inter-SemiBold", size: 16))
                            .foregroundColor(.black)
                        Spacer()
                        Text(time)
                            .font(Font.custom("Inter-Regular", size: 14))
                            .foregroundColor(.init(hex: "#BDBDBD"))
                    }
                    .padding(.leading, 16)
                    
                    Text(desc)
                        .font(Font.custom("Inter-Regular", size: 14))
                        .foregroundColor(.black)
                        .padding([.leading, .top], 4)
                }
            }
            .padding([.leading, .trailing], 16)
        }
    }
}


//MARK: - ProfileHeaderView
struct ProfileHeaderView: View {
    let name: String
    let desc: String
    
    let settingButtonAction: () -> Void
    let loginButtonAction: () -> Void
    @State var showBottomDrawer = false
    @State var showCongratulationsView = false
    
    var body: some View {
            VStack(spacing: 0) {
                VStack(spacing: 0) {
                    HStack {
                        Button("Settings") {
                            settingButtonAction()
                        }
                        .foregroundColor(Color.white)
                        .padding()
                        Spacer()
                        
                        Text("Profile")
                            .font(Font.custom("Inter-Bold", size: 30))
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
                        .onTapGesture {
                            showBottomDrawer.toggle()
                        }
                        .sheet(isPresented: $showBottomDrawer){
                            BottomDrawerView(showCongratulationsView: $showCongratulationsView, showBottomDrawer: $showBottomDrawer)
                                .presentationDetents([.height(250)])
                                .presentationDragIndicator(.hidden)
                        }
                        .navigationDestination(isPresented: $showCongratulationsView) {
                            CongratulationsView()
                        }
                }
                .background(Color.init(hex: "#5DB075"))
                
                Text(name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.top, 51)
                
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



