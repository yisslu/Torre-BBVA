//
//  CategoryView.swift
//  Bbva++
//
//  Created by Jesús Lugo Sáenz on 23/04/24.
//

import SwiftUI

struct CategoryView: View {
    var categoryItem: Category
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(.white)
                .frame(width: .infinity, height: 200)
                .shadow(color: .gray, radius: 3)
            Image(categoryItem.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .offset(y:-20)
            Text(categoryItem.name)
                .font(.title)
                .bold()
                .foregroundStyle(.blue)
                .offset(y:50)
        }
    }
}

#Preview {
    CategoryView(categoryItem: CategoryList[1])
}
