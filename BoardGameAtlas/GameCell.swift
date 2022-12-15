//
//  GameCell.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct GameCell: View {
        var game: Game

        var body: some View {
            HStack {
                if let url = game.imageURL {
                    GameImage(gameURL: url)
                        .frame(width: 100)
                }

                VStack(alignment: .center) {
                    HStack {
                        Text(game.name)
                            .font(.title2)

                        Spacer()
                    }
                    Text(game.description)
                        .lineLimit(3)
                }
            }
        }
    }

