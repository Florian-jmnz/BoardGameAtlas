//
//  BoardGameAtlasViewModel.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import Foundation
import SwiftUI

@MainActor
class BoardGameAtlasViewModel: ObservableObject {
    @Published var games = [Game]()
    @Published var searchedGames = [Game]()

    let gameFetcher = GameFetcher()

    
var currentnbGames = 0
    func getGames() async throws{
        let gamesResponse = try await gameFetcher.getGames(nbGames: currentnbGames)
        games.append(contentsOf: gamesResponse.games)
        currentnbGames += 30
        }
    
    func searchGames(search: String) async throws{
        let gamesResponse = try await gameFetcher.searchGames(searchName: search)
        searchedGames = gamesResponse.games
        }
}
