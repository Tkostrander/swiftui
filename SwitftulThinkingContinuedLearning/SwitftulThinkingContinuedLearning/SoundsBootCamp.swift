//
//  SoundsBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 9/10/23.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()  // Singleton
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case tada
        case badam
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error Playing Sound \(error.localizedDescription)")
        }
    }
    
}

struct SoundsBootCamp: View {

    var body: some View {
        VStack(spacing: 40) {
            Button("Play Sound 1") {
                SoundManager.instance.playSound(sound: .tada)
            }
            Button("Play Sound 2") {
                SoundManager.instance.playSound(sound: .badam)
            }
        }
    }
}

#Preview {
    SoundsBootCamp()
}
