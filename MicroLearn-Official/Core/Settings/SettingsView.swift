//
//  SettingsView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/16/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var isLoggingOut = false
    @Binding var isUserLoggedIn: Bool  // Binding to manage user logged-in state
    
    var body: some View {
        VStack {
            NavigationLink(destination: LoginView(isUserLoggedIn: $isUserLoggedIn).navigationBarBackButtonHidden(), isActive: $isLoggingOut) { EmptyView() }

            Button(action: signOut) {
                Text("Sign Out")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
            .padding()
        }
    }

    func signOut() {
        UserDefaults.standard.removeObject(forKey: "userToken")
        self.isUserLoggedIn = false
        self.isLoggingOut = true
        print("\(self.isUserLoggedIn)")
    }
}

#Preview {
    SettingsView(isUserLoggedIn: .constant(true))
}
