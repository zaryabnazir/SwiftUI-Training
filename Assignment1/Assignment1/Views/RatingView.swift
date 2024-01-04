//
//  RatingView.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 04/01/2024.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int


    var maximumRating = 5
    var offImage = Image(systemName: "star")
    var onImage = Image(systemName: "star.fill")

    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack() {
            ForEach(1...maximumRating , id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    image(for: number)
                        .frame(width: 32, height: 32)
                }
                .foregroundColor(onColor)
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            offImage
        } else {
            onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(1))
}
