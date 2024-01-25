//
//  Utilities.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/3/24.
//

//utility functions

import Foundation
import SwiftUI

//function to access video by unique identifier

class VideoLookup{
    //map data structure for uuid -> video object
    var videosByID: [UUID: Video]
    
    init(courses: [Course]) {
        var newVideosByID = [UUID: Video]()
        
        //here we loop through each video, which contains an ID, and make it referencable from its own ID
        for course in courses{
            for module in course.modules{
                for video in module.videos {
                    newVideosByID[video.id] = video
                }
            }
        }
        
        //set the videosByID dict to the one we built up in the nested for loop
        self.videosByID = newVideosByID
    }
    
    //this function returns a video object based off the uid, returns nil if video is not found
    //to call this, do VideoLookup.video(forID: video.id)
    func video(forID id: UUID) -> Video? {
        return videosByID[id]
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}

let theme_color = "#49beb7"
