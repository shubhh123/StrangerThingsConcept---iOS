//
//  AudioPlayer.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 02/04/24.
//

import SwiftUI
import AVFAudio


struct AudioPlayer: View {
    
    //var soundManager = SoundManager()
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("")
            }
        }
        .onAppear {
            SoundManager.instance.playSound()
        }
    }
}

#Preview {
    AudioPlayer()
}
