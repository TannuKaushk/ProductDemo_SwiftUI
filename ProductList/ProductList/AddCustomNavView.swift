//
//  AddCustomNavView.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI

struct AddCustomNavView<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () ->  Content) {
        self.content = content()
    }
    var body: some View {
        NavigationView {
            NavigationViewContainer {
                content
            }
        }.navigationBarHidden(true)
            .navigationViewStyle(.automatic)
    }
}

#Preview {
    AddCustomNavView {
        VStack {
            Color.red.ignoresSafeArea()
        }
    }
}
