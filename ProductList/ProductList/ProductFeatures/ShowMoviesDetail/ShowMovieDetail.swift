//
//  ShowMovieDetail.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct ShowMovieDetail: View {
     let movie: MovieDataResult
    @State var index: Int = 0
    var body: some View {
            VStack(alignment: .leading) {
              HStack(alignment: .center) {
                    Spacer()
                  DetailImageView(imageUrl: movie.posterPath)
                      .scaledToFit()
                        .frame(width: 200, height: 300)
                    Spacer()
               }
                .padding()
                Text("\(movie.title)")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.headline)
                    .fontWeight(.bold)
                Text("2023 - 2h 37m")
                    .font(.headline)
                    .fontWeight(.regular)
                HStack(spacing: 5) {
                    Image("starIcon")
                    Text("\(movie.voteAverage)")
                        .fontWeight(.regular)
                }
                Divider()
                    .background(Color.black)
                    .padding(.trailing, 20)
                Text("Description")
                    .font(.headline)
                Text(movie.overview)
                    .fontWeight(.regular)
                    .fixedSize(horizontal: false, vertical: true)
            }.padding(.leading, 20)
            Spacer()
        
    }
}

#Preview {
    ShowMovieDetail(movie: MovieDataResult.dummy)
}
