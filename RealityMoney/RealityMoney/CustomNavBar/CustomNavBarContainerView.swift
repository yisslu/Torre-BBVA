//
//  CustomNavBarContainerView.swift
//  Bbva++
//
//  Created by Jesús Lugo Sáenz on 24/04/24.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    let content: Content
    @State private var title: String = ""
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView(text: "Dividir cuenta")
            content
        }
        
    }
}

#Preview {
    CustomNavBarContainerView{
        ZStack{
            Color.cyan.ignoresSafeArea()
        }
    }
}
