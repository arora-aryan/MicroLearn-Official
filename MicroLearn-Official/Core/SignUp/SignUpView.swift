//
//  SignUpView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/15/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var first_name: String = ""
    @State private var last_name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirm_password: String = ""
    @State private var username: String = ""
    @State private var registrationSuccessful = false  // State variable for navigation
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sign Up for MicroLearn")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                    .padding(.top, 50)
                HStack{
                    TextField("First Name", text: $first_name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    TextField("Last Name", text: $last_name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                }
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Confirm Password", text: $confirm_password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                Button("Create Account", action: {
                    // Print the last_name
                    print("Last Name: \(last_name)")
                    
                    // Call your registration function
                    registerUser(first_name: first_name, last_name: last_name, email: email, password: password, confirm_password: confirm_password, username: username){ success in
                        if success {
                            registrationSuccessful = true
                        } else {
                            // Handle registration failure
                        }
                    }
                })
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold))
                .background(Color(hex: theme_color))
                .cornerRadius(10)
                .padding()
                NavigationLink(destination: MainTabView(), isActive: $registrationSuccessful) { EmptyView() }
                
                Spacer()
                
                HStack {
                        Divider()
                        Text("Already have an account?")
                            .font(.body)
                            .foregroundColor(.gray)
                        Divider()
                    }
                .padding(.top, 150)

                // Sign Up Button or Text
                NavigationLink(destination: LoginView(isUserLoggedIn: .constant(true)).navigationBarBackButtonHidden(true)) { // Replace SignUpView with your sign-up view
                    Text("Log in")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .navigationBarBackButtonHidden(true) // Hide the back button
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

#Preview {
    SignUpView()
}
