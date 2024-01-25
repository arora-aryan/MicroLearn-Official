//
//  CourseCell.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/1/24.
//

import SwiftUI

struct CourseCell: View {
    var course: Course
    
    var body: some View {
        HStack(spacing: 12){
            Text(course.emoji) // Replace with your desired emoji
                .font(.system(size: 40)) // Set the size of the emoji
                .foregroundColor(Color(.systemGray5)) // Set the color of the emoji
            
            VStack(alignment: .leading, content: {
                Text(course.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text(course.description)
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                
            })
            Spacer()
            
            Text("\(String(describing: course.rating))/5")
                .fontWeight(.thin)
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .contentShape(Rectangle())
    }
}

#Preview {
    ForEach(courses){ course in
        CourseCell(course: course)
    }
}
