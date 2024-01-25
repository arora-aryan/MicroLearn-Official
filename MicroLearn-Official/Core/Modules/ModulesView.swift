//
//  ModuleView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/2/24.
//

import SwiftUI

struct ModuleView: View {
    //declaration for current course view
    var course: Course
    
    var body: some View {
        //navigationview allows for current course info to be displayed. it is used for content navigated to and from.
        VStack {
            NavigationView {
                //for each course, have a section for each module, and show each video title
                List{
                    ForEach(course.modules) { module in
                        Section(header: Text(module.title), content: {
                            ForEach(module.videos){ video in
                                NavigationLink(destination: FeedView(course: course, videoID: video.id)){
                                        VStack{
                                            Text(video.title)
                                    }
                                }
                            }
                        })
                    }
                }
                .navigationTitle(course.name)
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

#Preview {
    ModuleView(course: sampleCourse)
}
