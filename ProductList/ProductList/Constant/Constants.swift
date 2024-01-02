//
//  Constants.swift
//  ProductList
//
//  Created by Kaushik on 27/12/23.
//

import Foundation

/**
 Struct to hold static strings
 */
struct Constants {
    
    static let apiKey: String = "c9856d0cb57c3f14bf75bdc6c063b8f3"
    static let baseURL: String = "https://api.themoviedb.org/3/"
    static let imageBaseURL: String = "https://image.tmdb.org/t/p/w500"
    
    struct URLs {
        static let listURL: String = "discover/movie"
        static let detailURL: String = "movie"
    }
    
}
