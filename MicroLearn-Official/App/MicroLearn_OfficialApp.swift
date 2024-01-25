//
//  MicroLearnApp.swift
//  MicroLearn
//
//  Created by Aryan Arora on 12/30/23.
//

import SwiftUI

@main
struct MicroLearn_OfficialApp: App {
    @State private var isUserLoggedIn = false
    //this makes the navigation view translucent (not the tabview itself)
    init() {
            // Make navigation bar background transparent
            let appearance = UINavigationBarAppearance()
            appearance.configureWithTransparentBackground()
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some Scene {
            WindowGroup {
                if isUserLoggedIn {
                    MainTabView()
                } else {
                    LoginView(isUserLoggedIn: $isUserLoggedIn)
                }
            }
        }
}
