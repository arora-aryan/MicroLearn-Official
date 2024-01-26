//
//  CourseData.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/2/24.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var emoji: String
    var description: String
    var modules: [Module]
    var rating: Decimal
}

struct Module: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var videos: [Video]
}

struct Video: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var url: String
}

let courses = [
    Course(
        name: "Stocks",
        emoji: "📈",
        description: "Learn the basics of stock trading, market analysis, and investment strategies.",
        modules: [
            Module(
                title: "Introduction to Stocks",
                description: "Understanding the Stock Market",
                videos: [
                    Video(title: "What Is A Stock?", content: "Introductory concepts in stock trading.", url: "https://dl.dropboxusercontent.com/scl/fi/5a9bwtdrify5nrfpu5q32/Snaptik.app_7203876479053172011.mp4?rlkey=faz3i269tq6hkv77v70a53sc4&dl=1"),
                    Video(title: "Stock Market Basics", content: "Understanding essential stock terms.", url: "https://dl.dropboxusercontent.com/scl/fi/gdb8cdzdfkswfmyh4a81u/Snaptik.app_7199790954327379243.mp4?rlkey=lnjeze627h00yhcj6o0lpxbbv&dl=1")
                ]
            ),
            Module(
                title: "Stock Market Analysis",
                description: "Analyzing Market Trends",
                videos: [
                    Video(title: "How Stocks are Valued", content: "Techniques for analyzing the stock market.", url: "https://dl.dropboxusercontent.com/scl/fi/1f8udhxy1cft0o73l1dc9/Snaptik.app_7148886947996667182.mp4?rlkey=2e4ovcvt59hnkrrr100prl1my&dl=1"),
                    Video(title: "Trading ETFs", content: "How to interpret exchange trade funds.", url: "https://dl.dropboxusercontent.com/scl/fi/jm18tft2wyyoyna2mko5u/Snaptik.app_7164217408637472043.mp4?rlkey=m3ucxtf0946ug17p62yr306b6&dl=1"),
                ]
            )
        ],
        rating: 4.5
    ),
    Course(
        name: "Bonds",
        emoji: "💰",
        description: "Explore bond fundamentals and strategies for investing in bonds.",
        modules: [
            Module(
                title: "Bond Fundamentals",
                description: "Basics of Bonds",
                videos: [
                    Video(title: "Introduction to Bonds", content: "Overview of bond investment.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Types of Bonds", content: "Exploring various types of bonds.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            ),
            Module(
                title: "Investing in Bonds",
                description: "Bond Investment Strategies",
                videos: [
                    Video(title: "Risks and Rewards", content: "Understanding the risks and rewards in bond investment.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Bond Portfolio Strategies", content: "How to build a bond portfolio.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            )
        ],
        rating: 4.0
    ),
    Course(
        name: "Guitar",
        emoji: "🎸",
        description: "Master the basics of guitar playing, from chords to melodies.",
        modules: [
            Module(
                title: "Guitar Basics",
                description: "Getting Started with Guitar",
                videos: [
                    Video(title: "Introduction to Guitar", content: "What will be covered in this course?", url: "https://dl.dropboxusercontent.com/scl/fi/k7kg49xxjamy3xd8ugmel/Snaptik.app_7233577258269855022.MOV?rlkey=yjkzullca8p6ymj6i2kjjj2in&dl=1"),
                    Video(title: "Basic Guitar Terminology", content: "Parts of the guitar and relevant vocabulary", url: "https://dl.dropboxusercontent.com/scl/fi/xrscu6hbtf6pdcfilqgjj/Snaptik.app_7233577258269855022-2.MOV?rlkey=nrvzig0xaad5nhwrtfkuw0hc3&dl=1"),
                    Video(title: "How to Hold the Guitar", content: "How to hold a guitar for right and left handed folks", url: "https://dl.dropboxusercontent.com/scl/fi/3k96yc840bhhmrr8x7ozf/Snaptik.app_7233577258269855022-3.mov?rlkey=mjr9ddrbah582pgcf5zvnm03k&dl=0")
                    
                ]
            ),
            Module(
                title: "Playing Chords",
                description: "Tuning, Chord Progressions, and Techniques",
                videos: [
                    Video(title: "Tuning Your Guitar", content: "Using a tuner to tune your guitar", url: "https://dl.dropboxusercontent.com/scl/fi/vpj0akpsgvu8idrokts4t/Snaptik.app_7233577258269855022-5.MOV?rlkey=7wqnbax0cf4uqaa4rszsqgnx7&dl=1"),
                    Video(title: "Strumming", content: "Learn the basics of strumming the strings of a guitar", url: "https://dl.dropboxusercontent.com/scl/fi/c839tkepma4w2941jdff4/Snaptik.app_7233577258269855022-7.MOV?rlkey=fjlwtj6sqkkdpk3yof16nzhyc&dl=1"),
                    Video(title: "Your First Strumming Pattern", content: "Follow along to these basic strum patterns", url: "https://dl.dropboxusercontent.com/scl/fi/bjlboaoyrg0x2fga69ng8/Snaptik.app_7233577258269855022-6.MOV?rlkey=90i5pwze76uisjkk36vox8tfg&dl=1")
                ]
            )
        ],
        rating: 4.7
    ),
    Course(
        name: "How to Drive",
        emoji: "🛞",
        description: "A comprehensive guide to becoming a skilled and safe driver.",
        modules: [
            Module(
                title: "Understanding Your Vehicle",
                description: "Basic Car Mechanics",
                videos: [
                    Video(title: "Vehicle Operation Basics", content: "Fundamentals of car operation.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Routine Maintenance", content: "Maintaining your vehicle.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            ),
            Module(
                title: "Road Safety",
                description: "Driving Safely and Responsibly",
                videos: [
                    Video(title: "Traffic Rules and Regulations", content: "Understanding and following traffic laws.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Defensive Driving Techniques", content: "Staying safe on the road.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            )
        ],
        rating: 4.8
    ),
    Course(
        name: "Card Magic Tricks",
        emoji: "🃏",
        description: "Learn fascinating card tricks and sleight of hand techniques.",
        modules: [
            Module(
                title: "Basic Card Tricks",
                description: "Simple Yet Impressive Tricks",
                videos: [
                    Video(title: "Easy Card Tricks", content: "Beginner-level card tricks.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Impressing with Simple Tricks", content: "Simple tricks to amaze.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            ),
            Module(
                title: "Advanced Techniques",
                description: "Mastering Sleight of Hand",
                videos: [
                    Video(title: "Sleight of Hand Basics", content: "The art of sleight of hand.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
                    Video(title: "Advanced Card Manipulation", content: "Advanced techniques for card magic.", url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4")
                ]
            )
        ],
        rating: 4.6
    )
]
