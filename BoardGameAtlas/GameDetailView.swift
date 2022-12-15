//
//  GameDetailView.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct GameDetailView: View {
        var game: Game
        var body: some View {
            VStack{
                HStack{
                    Text(game.name).font(.title)
                    Spacer()
                }
                if let url = game.imageURL {
                    GameImage(gameURL: url)
                        .frame(width: 200)
                }
                    Text(game.description).lineLimit(5)
            }
            .padding()
        }
    }

