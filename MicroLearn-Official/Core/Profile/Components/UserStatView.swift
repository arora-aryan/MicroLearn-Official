//
//  UserStatView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/14/24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: 5, title: "Followers")
}
