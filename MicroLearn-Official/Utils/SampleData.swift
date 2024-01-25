//
//  SampleData.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/3/24.
//

//sample data

import Foundation

//sample course for preview purposes
let sampleCourse = Course(
    name: "Sample Course",
    emoji: "👤",
    description: "This is a sample course description.",
    modules: [
        Module(title: "Sample Module 1",
               description: "Description for Sample Module 1",
               videos: [
                Video(title: "Video 1", content: "Intro Video", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                Video(title: "Video 2", content: "Advanced Concepts", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
               ]
              ),
        
        Module(title: "Sample Module 2",
               description: "Description for Sample Module 2",
               videos: [
                Video(title: "Video 3", content: "More Advanced Video", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                Video(title: "Video 4", content: "Last Video", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
               ]
              ),
        
    ],
    rating: 4.5
)
