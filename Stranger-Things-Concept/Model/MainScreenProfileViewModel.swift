//
//  ViewModel.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 04/04/24.
//

import SwiftUI

class MainScreenProfileViewModel: ObservableObject {
    
    @Published var currentIndex: Int
    @Published var startAnimation: Bool
    var profiles: [Profile]
    
    init(profileModel: ProfileModel) {
        self.currentIndex = profileModel.currentIndex
        self.startAnimation = profileModel.startAnimation
        self.profiles = profileModel.profiles
    }
    
    func playImages() {
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            withAnimation(Animation.easeOut(duration: 3).delay(0.25)) {
                print("Toggling startAnimation stateObject...")
                self.startAnimation.toggle()
            }
            if !self.startAnimation {
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                    print("Selecting next image")
                    self.currentIndex = (self.currentIndex + 1) % self.profiles.count
                }
            }
        }
    }
}
