//
//  ProductViewModel.swift
//  ProductList
//
//  Created by Kaushik on 26/12/23.
//

import Foundation

@Observable class ProductViewModel {
    private let manager = ApiManager()
    var productArray: [MovieDataResult] = []
    private var page = 1

    func fetchProductList() async {
        do {
            let product_Url = Constants.baseURL + "\(Constants.URLs.listURL)?api_key=" + "\(Constants.apiKey)&page=" + "\(page)"
            let response: MovieData = try await manager.request(url: product_Url)
            productArray.append(contentsOf: response.results)
            print(productArray)
        } catch {
            print("Fecth Product error:", error)
        }
    }
    
    func fetchNextProductList() async {
        page += 1
        do {
            let product_Url = Constants.baseURL + "\(Constants.URLs.listURL)?api_key=" + "\(Constants.apiKey)&page=" + "\(page)"
            let response: MovieData = try await manager.request(url: product_Url)
            productArray += response.results
            print(productArray)
        } catch {
            print("Fecth Product error:", error)
        }
    }
    
    
    func hasReachedEnd(product: MovieDataResult) -> Bool {
        productArray.last?.id == product.id
    }
}

