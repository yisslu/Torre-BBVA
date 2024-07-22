//
//  CustomNavView.swift
//  Bbva++
//
//  Created by Jesús Lugo Sáenz on 19/07/24.
//

import SwiftUI

struct CustomNavView<Content:View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    var body: some View {
        NavigationView{
            CustomNavBarContainerView {
                content
            }
            .toolbar(.hidden)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    CustomNavView{
        Color.blue.ignoresSafeArea()
    }
}
