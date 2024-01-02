//
//  productModel.swift
//  ProductList
//
//  Created by Kaushik on 26/12/23.
//

import Foundation

// MARK: - MovieData
struct MovieData: Decodable {
    let page: Int
    let results: [MovieDataResult]
    let totalResults, totalPages: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalResults = "total_results"
        case totalPages = "total_pages"
    }
}
// MARK: - MovieDataResult
struct MovieDataResult: Decodable, Identifiable {
    let posterPath: String?
    let adult: Bool
    let overview, releaseDate: String
    let genreIDS: [Int]
    let id: Int
    let originalTitle: String
    let originalLanguage: String
    let title: String
    let backdropPath: String?
    let popularity: Double
    let voteCount: Int
    let video: Bool
    let voteAverage: Double
    static var dummy: MovieDataResult {
        return MovieDataResult(posterPath: "/mBaXZ95R2OxueZhvQbcEWy2DqyO.jpg", adult: true, overview: "64 years before he becomes the tyrannical president of Panem, Coriolanus Snow sees a chance for a change in fortunes when he mentors Lucy Gray Baird", releaseDate: "2023-11-15", genreIDS: [18, 878, 28], id: 1, originalTitle: "en", originalLanguage: "en", title: "The Hunger Games: The Ballad of Songbirds & Snakes", backdropPath: "/ui4DrH1cKk2vkHshcUcGt2lKxCm.jpg", popularity: 7.77, voteCount: 23, video: false, voteAverage: 7.2)
    }


    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case adult, overview
        case releaseDate = "release_date"
        case genreIDS = "genre_ids"
        case id
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case title
        case backdropPath = "backdrop_path"
        case popularity
        case voteCount = "vote_count"
        case video
        case voteAverage = "vote_average"
    }
}


