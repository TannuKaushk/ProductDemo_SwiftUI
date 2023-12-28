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
     
    func fetchProductList(page: Int) async {
        do {
            let product_Url = Constants.baseURL + "\(Constants.URLs.listURL)?api_key=" + "\(Constants.apiKey)&page=" + "\(page)"
            let response: MovieData = try await manager.request(url: product_Url)
            productArray.append(contentsOf: response.results)
            print(productArray)
        } catch {
            print("Fecth Product error:", error)
        }
    }
}
