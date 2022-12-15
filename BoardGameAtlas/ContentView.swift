//
//  ContentView.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = BoardGameAtlasViewModel()
    var body: some View {
        TabView{
            TopGamesView(viewModel: viewModel)
        .tabItem{
            Label("Top Games", systemImage: "star")
            }
            SearchView(viewModel: viewModel)
        .tabItem{
            Label("Search Games", systemImage: "magnifyingglass")
            }
        }
    }
}
