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
}
