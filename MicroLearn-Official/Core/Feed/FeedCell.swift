//
//  FeedCell.swift
//  MicroLearn
//
//  Created by Aryan Arora on 1/23/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let video: Video
    var player: AVPlayer
    @State private var isInitiallyVisible = false

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                CustomVideoPlayer(player: player)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                
                VStack(alignment: .leading, spacing: 0){
                    Spacer()
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading) {
                            Text(video.title)
                                .fontWeight(.semibold)
                            Text(video.content)
                        }
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .padding(30)
                    }
                }
            }
            .onChange(of: geometry.frame(in: .global)) { frame in
                if isViewCompletelyVisible(frame: frame, in: UIScreen.main.bounds) {
                    restartAndPlay(player: player)
                } else {
                    player.pause()
                }
            }
        }
        .frame(height: UIScreen.main.bounds.height) // Set the height to the screen height
    }

    private func isViewCompletelyVisible(frame: CGRect, in bounds: CGRect) -> Bool {
        let isTopVisible = frame.minY >= bounds.minY
        let isBottomVisible = frame.maxY <= bounds.maxY
        return isTopVisible && isBottomVisible
    }
    
    private func restartAndPlay(player: AVPlayer) {
            player.seek(to: CMTime.zero) { _ in
                player.play()
            }
        }
}

// Preview provider
struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        // Iterate over the modules and videos in the sample course
        ForEach(sampleCourse.modules, id: \.id) { module in
            ForEach(module.videos, id: \.id) { video in
                FeedCell(video: video, player: AVPlayer(url: URL(string: video.url)!))
            }
        }
    }
}
