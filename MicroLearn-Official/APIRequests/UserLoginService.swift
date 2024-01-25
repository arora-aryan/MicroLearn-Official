//
//  UserLoginService.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/16/24.
//

import Foundation

func loginUser(password: String, username: String, completion: @escaping (Bool) -> Void) {
    let urlString = "http://127.0.0.1:8000/login/"
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: [
                "password": password,
                "username": username
            ])
            
            request.httpBody = jsonData
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    print("Error: \(error)")
                    completion(false)
                } else if let data = data {
                    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        if let token = json["token"] as? String {
                            print("Received token: \(token)")
                            storeToken(token)
                            completion(true)  // Login successful
                        } else {
                            print("Login failed, no token in response")
                            completion(false)
                        }
                    } else {
                        print("Invalid JSON response")
                        completion(false)
                    }
                }
            }
            
            task.resume()
        } catch {
            print("Serialization error")
            completion(false)
        }
    } else {
        completion(false)
    }
}

func storeToken(_ token: String) {
    // Store the token securely. Here we use UserDefaults for simplicity.
    // For a production app, consider using Keychain.
    UserDefaults.standard.set(token, forKey: "userToken")
}
