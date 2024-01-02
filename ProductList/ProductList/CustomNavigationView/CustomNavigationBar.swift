//
//  CustomNavigationBar.swift
//  ProductList
//
//  Created by Kaushik on 28/12/23.
//

import SwiftUI
/** Custom NavigationView
*/
struct CustomNavigationBar: View {
    @Environment(\.presentationMode) var presentationMode
     var showBackButton: Bool
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
        CustomNavigationBar(showBackButton: true)
        Spacer()
    }
}

extension CustomNavigationBar {
    private var backButton : some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            HStack {
                if !showBackButton {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                    
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
