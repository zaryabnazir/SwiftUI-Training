//
//  RateAppView.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 04/01/2024.
//

import SwiftUI

struct RateAppView: View {
    @State var rating: Int = 5
    
    var body: some View {
        ZStack() {
            Color(hex: "#5DB075")
            VStack(spacing: 0) {
                
                RatingView(rating: $rating)
                    .padding(.top)
                
                Text("Rate our app")
                    .font(.custom("Inter-Medium", size: 30))
                    .padding([.bottom, .top], 16)
                
                Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.init(hex: "#666666"))
                    .font(.custom("Inter-Medium", size: 16))
                    .padding([.leading, .trailing], 32)
                    .padding(.bottom, 45)
                
                HStack {
                    Spacer()
                    Button("Click Me") {
                        
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
                .padding(.bottom)
            }
            .background()
            .cornerRadius(8)
            .padding()
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RateAppView()
}
