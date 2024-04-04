
//
//  MainScreenProfile.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 02/04/24.
//

import SwiftUI

struct MainScreenProfile: View {
    
    @ObservedObject var viewModel: MainScreenProfileViewModel
    
    var body: some View {
        
        VStack {
            Image(viewModel.profiles[viewModel.currentIndex].rawValue)
                .resizable()
                .scaledToFill()
                .frame(height: 700) // Adjust the height as needed
                .mask(LinearGradient(gradient: Gradient(stops: [
                    .init(color: .black, location: 0),
                    .init(color: .clear, location: 1), // Adjust the location as needed
                    //.init(color: .black, location: 1),
                    //.init(color: .clear, location: 1)
                ]), startPoint: .top, endPoint: .bottom))
                .opacity(viewModel.startAnimation ? 1.0 : 0)
                .onAppear {
                    viewModel.playImages()
                }
            }
        }
    }

#Preview {
    MainScreenProfile(viewModel: MainScreenProfileViewModel(profileModel: ProfileModel()))
}
