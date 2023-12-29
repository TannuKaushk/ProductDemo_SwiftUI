//
//  NavigationViewContainer.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct NavigationViewContainer<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
          CustomNavigationBar()
            content.frame(maxWidth: .infinity, maxHeight: .infinity)
           // Spacer()
        }
    }
}

#Preview {
    NavigationViewContainer {
        ZStack {
            Color.red.ignoresSafeArea()
        }
    }
}
