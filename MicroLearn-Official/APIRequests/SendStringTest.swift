//
//  SendStringTest.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/14/24.
//

import Foundation

func sendString(){
    let urlString = "http://127.0.0.1:8000/post_string/"
    
    // attempt to create a URL object from a given String, if statement checks to see if we can properly initialize it
    if let url = URL(string: urlString){
        //creates an instance of URLRequest and initializes it with the provided URL. This is an HTTP request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let stringToSend = "Hello Python"
        
        do {
            //serialization makes all data storable data types
            let jsonData = try JSONSerialization.data(withJSONObject: ["test_str": stringToSend])
            
            //insert into body of the request
            request.httpBody = jsonData
            
            //setValue allows you to modify metadata about the request
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            //URLSession is an object that manages network requests, .shared shares this instance with the whole app, and a dataTask retrieves data
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    //error handling
                    print("Error: \(error)")
                }
                else if let data = data {
                    //if data is recieved, parse it as JSON
                    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        if let message = json["message"] as? String {
                            print("Response Message: \(message)")
                        }
                    }
                }
            }
            
            task.resume()
        } catch {
            print("serialization didnt work")
        }
    }
}
