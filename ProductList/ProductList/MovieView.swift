//
//  ContentView.swift
//  ProductList
//
//  Created by Kaushik on 26/12/23.
//

import SwiftUI

struct MovieView: View {
    let viewModel = ProductViewModel()
    @State var titleText: String = "The Hunger Games: The Ballad of Sonbirds & Snakes"
    @State var yearText: String = "2023"
    @State var ratingText: String = "7.2"
    var body: some View {
        NavigationView {
            List {
                ForEach(Array(viewModel.productArray.enumerated()), id: \.element.id) { index, item in
                    MovieListView(movie: item)
                }
                .selectionDisabled()
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            .background(Color.white)
            .navigationTitle("Trending Movies")
            
            
        }
        .task {
            await viewModel.fetchProductList(page: 1)
        }

        }
    }


#Preview {
    MovieView()
}
