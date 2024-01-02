//
//  NavigationViewContainer.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct NavigationViewContainer<Content: View>: View {
    let content: Content
    let showBackButton: Bool
    init(@ViewBuilder content: () -> Content, showBackButton: Bool) {
        self.content = content()
        self.showBackButton = showBackButton 
    }
    var body: some View {
        VStack(spacing: 0) {
            CustomNavigationBar(showBackButton: showBackButton)
            content.frame(maxWidth: .infinity, maxHeight: .infinity)
           // Spacer()
        }
    }
}

#Preview {
    NavigationViewContainer(content: {
        ZStack {
            Color.red.ignoresSafeArea()
        }
    },showBackButton: true)
}
