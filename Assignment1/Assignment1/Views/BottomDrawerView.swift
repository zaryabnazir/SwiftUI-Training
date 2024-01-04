//
//  BottomDrawerView.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 02/01/2024.
//

import SwiftUI

struct BottomDrawerView: View {
    @Binding var showCongratulationsView: Bool
    @Binding var showBottomDrawer: Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack(spacing: 0) {
                
                
                Text("Drawer Header")
                    .font(.custom("Inter-Medium", size: 30))
                    .padding(.bottom, 16)
                
                Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.init(hex: "#666666"))
                    .font(.custom("Inter-Medium", size: 16))
                    .padding([.leading, .trailing], 32)
                
                HStack {
                    Spacer()
                    Button("Click Me") {
                        dismiss()
                        showCongratulationsView = true
                        
                    }
                    .foregroundColor(.white)
                    .frame(height: 51)
                    .background(Color.init(hex: "#5DB075"))
                    Spacer()
                }
                .background(Color.init(hex: "#5DB075"))
                .cornerRadius(100)
                .padding()
                
                Button("Secondry Action") {
                    
                }
                .foregroundColor(Color.init(hex: "#5DB075"))
            }
            .padding()
            .padding(.top)
            .clipShape(
                .rect(
                    topLeadingRadius: 16,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 16
                )
            )
            
                
        }
        .ignoresSafeArea()
    }
        
}

#Preview {
    BottomDrawerView(showCongratulationsView: .constant(false), showBottomDrawer: .constant(false))
}
