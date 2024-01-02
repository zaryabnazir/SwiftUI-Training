//
//  TestZstack.swift
//  Assignment1
//
//  Created by Muhammad Zaryab on 02/01/2024.
//

import SwiftUI

struct TestZstack: View {
    var body: some View {
        VStack {
            ZStack{
                Color.red
                Text("Home")
                    .background(Color.blue)
            }
            .frame(height: 200)
            
            Spacer()
        }
    }
}

#Preview {
    TestZstack()
}
