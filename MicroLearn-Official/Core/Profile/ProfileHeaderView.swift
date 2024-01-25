//
//  ProfileHeaderView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/14/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                //profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                //username
                Text("@sample.user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 16) {
                //stats view
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 6, title: "Followers")
                UserStatView(value: 100, title: "Likes")
            }
            
            //action button
            NavigationLink(destination: EditProfileView()) {
                               Text("Edit Profile")
                                   .font(.subheadline)
                                   .fontWeight(.semibold)
                                   .frame(width: 360, height: 32)
                                   .foregroundStyle(.black)
                                   .background(Color(.systemGray5))
                                   .clipShape(RoundedRectangle(cornerRadius: 6))
                           }

                           Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
