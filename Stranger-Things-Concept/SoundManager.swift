//
//  SoundManager.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 02/04/24.
//

import Foundation
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "stranger-things-theme-song", withExtension: ".mp3") else {
            return
        }
        
        do {
            //_ = try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default, options: .mixWithOthers)
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error{
            print("cannot play \(error)")
        }
        
    }
    
    
}
