//
//  ContentView.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var mainScreenProfileViewModel = MainScreenProfileViewModel(profileModel: ProfileModel())
    
    var body: some View {
        ScrollView {
            ZStack {
                MainScreenProfile(viewModel: mainScreenProfileViewModel)
                Spacer()
            }
            VStack(spacing: 20) {
                ForEach(0 ..< 20) { _ in
                    CastView()
                }
            }
        }
        .background(Color.black) // Set background color to ensure the gradient mask works
        AudioPlayer()
    }
}
#Preview {
    ContentView()
}
