//
//  LoginView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/15/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isUserLoggedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var loginSuccess: Bool = false
    @State private var showingAlert = false
    @State private var alertMessage = ""
        
    var body: some View {
        NavigationView {
            VStack {
                Image("LogoImage") // Replace "logo" with the name of your logo image in the asset catalog
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 500) // Adjust the size as needed
                    .padding(.top, 10)
                    .padding(.bottom, -200)
                
                Text("MicroLearn")
                    .font(.custom("Palatino", size: 36))
                    .fontWeight(.semibold)
                    .padding(.bottom)
                
                TextField("Username", text: $username)
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: loginAction) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .bold))
                        .background(Color(hex: theme_color))
                        .cornerRadius(25)
                    
                }
                .padding(.horizontal) // This adds padding to both left and right sides
                .padding(.bottom, -100)
                
                HStack {
                    Divider()
                    Text("Don't have an account?")
                        .font(.body)
                        .foregroundColor(.gray)
                    Divider()
                }
                .padding(.top, 175)
                
                // Sign Up Button or Text
                NavigationLink(destination: SignUpView().navigationBarBackButtonHidden(true)) { // Replace SignUpView with your sign-up view
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                    
                }
                NavigationLink(destination: MainTabView(), isActive: $loginSuccess) { EmptyView() }
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Login Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
    
    func loginAction() {
        loginUser(password: password, username: username) { success in
            DispatchQueue.main.async {
                self.loginSuccess = success
                print("login \(self.loginSuccess)")
                if !success {
                    self.alertMessage = "Invalid username or password. Please try again."
                    self.showingAlert = true
                }
                else{
                    self.isUserLoggedIn = true
                }
            }
        }
    }
}

#Preview {
    LoginView(isUserLoggedIn: .constant(false))
}
