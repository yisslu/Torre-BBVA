//
//  CustomNavLink.swift
//  Bbva++
//
//  Created by Jesús Lugo Sáenz on 19/07/24.
//

import SwiftUI

struct CustomNavLink<Label:View, Destination:View>: View {
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label){
        self.destination = destination
        self.label = label()
    }
    var body: some View {
        NavigationLink(
            destination: 
                CustomNavBarContainerView(content: {
                    destination
                })
                .toolbar(.hidden)
            ,
            label: {
                label
            })
    }
}

#Preview {
    CustomNavView {
        CustomNavLink(
            destination: Text("Destination")){ Text("Navigate")
        }
    }
}
