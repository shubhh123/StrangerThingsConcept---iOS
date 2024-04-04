//
//  CastView.swift
//  Stranger-Things-Concept
//
//  Created by Shubham on 01/04/24.
//

import SwiftUI

struct CastView: View {
    var body: some View {
        HStack() {
            Image("millie-bobby-brown")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 200, height: 190)
            
            VStack(alignment: .leading) {
                Text("El")
                    .font(.title)
                    .fontWeight(.bold)
                Text("I am El")
                    .foregroundStyle(Color.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
            }
        } //HSTACK
    }
}

#Preview {
    CastView()
}
