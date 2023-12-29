//
//  ShowMovieDetail.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct ShowMovieDetail: View {
    var movie: [MovieDataResult] = []
    @State var index: Int
    var body: some View {
        AddCustomNavView {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Spacer()
                    DetailImageView(imageUrl: movie[index].posterPath)
                        .frame(width: 200, height: 300)
                    Spacer()
                }
                .padding()
                Text(movie[index].title)
                    .frame(minHeight: 50)
                    .font(.headline)
                    .fontWeight(.bold)
                Text("2023 - 2h 37m")
                    .font(.headline)
                    .fontWeight(.regular)
                HStack(spacing: 5) {
                    Image("starIcon")
                    Text(movie[index].title)
                        .fontWeight(.regular)
                }
                Rectangle()
                    .frame(width: .infinity, height: 1)
                Text("Description")
                    .font(.headline)
                Text("The Grinch hatches a scheme to ruin Christmas when the residents of Whoville plan their annual holiday celebration.")
                    .fontWeight(.regular)
                    .frame(minHeight: 70)
            }.padding()
            Spacer()
            }
    }
}

#Preview {
    ShowMovieDetail(index: 0)
}
