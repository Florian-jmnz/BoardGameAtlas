//
//  GameFetcher.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import Foundation

class GameFetcher{
    
    let url = URL(string: "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=1pDSmlnFEx")!
    let jsonDecodeur = JSONDecoder()

    
    func getGame() async throws -> Game {
        let request = URLRequest(url: url)
        print(url)
        let (data, _) = try await URLSession.shared.data(for: request)
    let game = try jsonDecodeur.decode(Game.self, from: data)
    return game
    }
    
    func getGames(nbGames: Int) async throws -> GamesResponse{
        let urlGames = URL(string: "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=1pDSmlnFEx&skip=\(nbGames)")!
        let request = URLRequest(url: urlGames)
        let (data, _) = try await URLSession.shared.data(for: request)
        let jsonDecodeur = JSONDecoder()
        let gamesResponse = try jsonDecodeur.decode(GamesResponse.self, from: data)
        return gamesResponse
    }
    
    

}
