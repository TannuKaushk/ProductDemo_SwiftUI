//
//  ContentView.swift
//  ProductList
//
//  Created by Kaushik on 26/12/23.
//

import SwiftUI

struct MovieView: View {
    let viewModel = ProductViewModel()
    var body: some View {
        AddCustomNavView (content: {
            List {
                ForEach(Array(viewModel.productArray.enumerated()), id: \.element.id) { index, item in
                    CustomNavLink(destionation: ShowMovieDetail(movie: item), label: {
                        MovieListView(movie: item)
                            .task {
                                if viewModel.hasReachedEnd(product: item) {
                                    await viewModel.fetchNextProductList()
                                }
                            }
                    }, showBackButton: false)
                   
                }
                .selectionDisabled(true)
                .listRowSeparator(.hidden)
                .listRowBackground(Color.white)
                
            }.scrollIndicators(.hidden, axes: .vertical)
            .listStyle(.plain)
        }, showBackButton: true)
        
        .task {
                await viewModel.fetchProductList()
            
        }

        }
    
 
    }


#Preview {
    MovieView()
}
