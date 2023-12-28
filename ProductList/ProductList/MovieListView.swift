//
//  MovieListView.swift
//  ProductList
//
//  Created by Kaushik on 27/12/23.
//

import SwiftUI

struct MovieListView: View {
    let movie: MovieDataResult
    var formatter: DateFormatter  {
        let formattre = DateFormatter()
        formattre.dateStyle = .medium
        formattre.locale = Locale(identifier: "en_US_POSIX")
        formattre.timeZone = TimeZone(identifier: "UTC")
        return formattre
    }
    var body: some View {
            HStack {
                Image("Pic")
                    .resizable()
                if let url = URL(string: movie.posterPath ?? "") {
                    movieImage(url: url)
                }
                    
                VStack(alignment: .leading) {
                    Text("\(movie.title)")
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.bottom, 3)
                    Text(movie.releaseDate.getDate() ?? Date(), format: Date.FormatStyle().year())
                        .fontWeight(.regular)
                    HStack(spacing: 5) {
                        Image("starIcon")
                        Text("\(movie.voteAverage, specifier: "%.1f")")
                            .fontWeight(.regular)
                    }
                }
                
            }
        }
    
   
}

func movieImage(url: URL) -> some View {
    AsyncImage(url: url) { image in
        image.resizable()
            .scaledToFit()
    } placeholder: {
        ProgressView()
    }
    
    .frame(width: 140, height: 180)
}

//#Preview {
//    MovieListView()
//}
