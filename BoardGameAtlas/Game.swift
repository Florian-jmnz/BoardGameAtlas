//
//  Game.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import Foundation

struct Game {
    let id : String
    let name : String
    let description: String
    let imageURL : String
}

extension Game: Identifiable, Hashable {}


extension Game : Codable {
    private enum CodingKeys : String, CodingKey {
        case id
        case name
        case description = "description_preview"
        case imageURL = "image_url"
    }
}

struct GamesResponse : Codable{
    let games : [Game]
}