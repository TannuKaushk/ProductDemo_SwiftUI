//
//  DetailImageView.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct DetailImageView: View {
    let imageUrl: String?
    var body: some View {
        if let url = URL(string: Constants.imageBaseURL + "/" + (imageUrl ?? "")) {
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        } else {
            ProgressView()
        }
    }
}


