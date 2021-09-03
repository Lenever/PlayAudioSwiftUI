//
//  PlayAudioViewModel.swift
//  PlayAudio
//
//  Created by Ikechukwu Onuorah on 02/09/2021.
//

import AVFoundation
import Foundation
import Combine

final class PlayAudioViewModel: ObservableObject {
    var player: AVPlayer?
        
    func playMusic() -> AVPlayer {
        let url = URL(string: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3")
        
        let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)
        
        player?.play()
        
        return player!
    }
}
