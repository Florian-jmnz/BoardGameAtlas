//
//  TopGamesView.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct TopGamesView: View {
    @ObservedObject var viewModel: BoardGameAtlasViewModel
    var body: some View {
        NavigationView{
            List{
            
            GameListView(
                games: viewModel.games
            )
            .navigationTitle(Text("Top games"))
        }
        }
}
}
