//
//  MainTabView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 12/30/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            //tabview is the view at the bottom of the screen
            TabView{
                Text("Home Feed")
                    .tabItem {
                        VStack {
                            Image(systemName: "house")
                            Text("Home Feed")
                        }
                    }
                
                CoursesView() //this is how you assign a view to a tab
                    .tabItem {
                        VStack {
                            Image(systemName: "book")
                            Text("Your Courses")
                        }
                    }
                
                //add upload course page view here
                Text("Upload Course")
                    .tabItem {
                        VStack {
                            Image(systemName: "plus")
                            Text("Upload Course")
                        }
                    }
                
                ProfileView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                    }
            }
            
            //color for tabview
            .tint(Color(.darkGray))
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    MainTabView()
}
