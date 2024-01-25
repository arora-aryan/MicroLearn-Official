//
//  CoursesView.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/1/24.
//

//this is the page that contains the user's current saved courses

//TODO: add an all courses section

import SwiftUI

struct CoursesView: View {
    var body: some View {
        NavigationStack {
            ScrollView() {
                LazyVStack() {
                    ForEach(courses) { course in
                        //navlink defines destination for each course click and content for each rectangle in the lazyvstack
                        NavigationLink(destination: ModuleView(course: course)) {
                            CourseCell(course: course)
                                .padding(.horizontal)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .navigationTitle("Courses")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CoursesView()
}
