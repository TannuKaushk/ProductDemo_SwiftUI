//
//  AddCustomNavView.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct AddCustomNavView<Content: View>: View {
    let content: Content
    let showBackButton: Bool
    init(@ViewBuilder content: () ->  Content, showBackButton: Bool) {
        self.content = content()
        self.showBackButton = showBackButton
    }
    var body: some View {
        NavigationView {
            NavigationViewContainer(content:  {
                content
            }, showBackButton: showBackButton)
        }.navigationBarHidden(true)
            .navigationViewStyle(.automatic)
    }
}

#Preview {
    AddCustomNavView(content: {
        VStack {
            Color.red.ignoresSafeArea()
        }
    }, showBackButton: true)
}
