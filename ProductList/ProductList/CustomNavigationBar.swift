//
//  CustomNavigationBar.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct CustomNavigationBar: View {
    var body: some View {
        HStack(spacing: nil) {
            backButton
            Spacer()
            titleLabel
            Spacer()
            backButton.opacity(0)
        }.accentColor(.white)
            .padding()
            .background(
                Color.orange.ignoresSafeArea()
            )
    }
}

#Preview {
    VStack {
        CustomNavigationBar()
        Spacer()
    }
}

extension CustomNavigationBar {
    private var backButton : some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text("Back")
                    .font(.headline)
                    .fontWeight(.bold)
                    
            }
        }
    }
    
    private var titleLabel : some View {
        Text("Overview")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}
