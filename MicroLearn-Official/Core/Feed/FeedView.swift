//
//  FeedView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/2/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    var course: Course
    var videoID: UUID
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView{
            //the scrollviewreader helps auto scroll to selected video, thats what the proxy is for
            ScrollViewReader { proxy in
                LazyVStack(spacing: 0){
                    ForEach(course.modules){ module in
                        ForEach(module.videos){ video in
                            FeedCell(video: video, player: AVPlayer(url: URL(string: video.url)!))
                                //this id is required for the proxy as well
                                .id(video.id)
                        }
                    }
                }
            
                //this makes our feed open to selected video, onAppear triggers modifier
                //DispatchQueue.main.async puts scroll action in the main queue (which means it is done once the feed is laid out)
                //scrollTo does the scrolling, and anchor does the positioning
                .onAppear {
                    DispatchQueue.main.async {
                        proxy.scrollTo(videoID, anchor: .top)
                    }
                }
                
                .scrollTargetLayout()
            }
        }
        .toolbar(.hidden, for: .tabBar)
        //these make the page stick instead of scrolling midway between the pages and fill the screen completely
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true) // Hide the default back button
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left") // Just the arrow icon
        })
    }
}

#Preview {
    FeedView(course: sampleCourse, videoID: firstVideoID)
}

//just checking to see if github is working
