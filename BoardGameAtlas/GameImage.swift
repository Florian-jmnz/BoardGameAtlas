//
//  GameImage.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct GameImage: View {
    var gameURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: gameURL)) { phase in

            switch phase {
            case .empty:
                ZStack {
                    Color.clear
                    ProgressView()
                }
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            default:
                Color.clear
            }
        }
    }
}
