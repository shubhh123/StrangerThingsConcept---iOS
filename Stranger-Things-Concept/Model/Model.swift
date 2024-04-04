//
//  Model.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 04/04/24.
//

import Foundation

enum Profile: String {
    case image0
    case image1
    case image2
}

class ProfileModel {
    var currentIndex = 0
    var startAnimation = true
    
    let profiles: [Profile] = [.image0, .image1, .image2]
}


