//
//  SearchView.swift
//  BoardGameAtlas
//
//  Created by Florian Jimenez on 30/11/2022.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel: BoardGameAtlasViewModel
        @State private var searchName = ""

        var body: some View {
            NavigationView {
                List {
                    GameListView(
                        games: viewModel.searchedGames
                    )
                }
                .navigationTitle("Search")
                }
                
                .searchable(text: $searchName)
                .onChange(of: searchName){_ in
                    Task{
                        do{
                            try await viewModel.searchGames(search: searchName)
                        }
                        catch{
                            print(error)
                        }
                    }
                    
                }
                }
            }

