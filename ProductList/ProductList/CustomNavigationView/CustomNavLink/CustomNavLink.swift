//
//  CustomNavLink.swift
//  ProductList
//
//  Created by Kaushik on 02/01/24.
//

import SwiftUI

struct CustomNavLink<Label:View, Destination:View>: View {
    
    let destionation: Destination
    let label: Label
    let showBackButton: Bool
    init(destionation: Destination, @ViewBuilder label: ()-> Label, showBackButton: Bool) {
        self.destionation = destionation
        self.label = label()
        self.showBackButton = showBackButton
    }
    var body: some View {
        NavigationLink {
            NavigationViewContainer(content: {
                destionation
            }, showBackButton: showBackButton)
            .navigationBarHidden(true)
        } label: {
            label
        }

    }
}

#Preview {
    AddCustomNavView(content: {
        CustomNavLink(destionation: Text("Destionation"), label: {
            Text("Navigation")
        }, showBackButton: true)
    }, showBackButton: true)
}

