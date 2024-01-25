//
//  ProfileView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/14/24.
//


//TODO : NAVIGATE TO EDIT PROFILE VIEW AND SEND INFO TO BACKEND

import SwiftUI

struct ProfileView: View {
    // State to manage the navigation
    @State private var isNavigatingToSettings = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // Profile header view
                    ProfileHeaderView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Adding a settings button in the navigation bar
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Trigger navigation to settings
                        isNavigatingToSettings = true
                    }) {
                        Image(systemName: "gearshape")
                            .imageScale(.large)
                    }
                }
            }
            .background(
            // NavigationLink for programmatic navigation
                NavigationLink(destination: SettingsView(isUserLoggedIn: .constant(true)), isActive: $isNavigatingToSettings) {EmptyView()}
            )
        }
    }
}

#Preview {
    ProfileView()
}

