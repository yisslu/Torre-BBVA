//
//  CustomNavBarView.swift
//  Bbva++
//
//  Created by Jesús Lugo Sáenz on 24/04/24.
//

import SwiftUI

struct CustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showBackButton: Bool = true
    @State var text: String = ""
    var body: some View {
        HStack{
            if showBackButton{
                backButton
            }
            Spacer()
            titleSection
            Spacer()
        }
        .padding()
        .accentColor(.white)
        .font(.headline)
        .background(Color(hex:"051e44").ignoresSafeArea(edges:.top))
        .foregroundStyle(.white)
    }
}

#Preview {
    VStack{
        CustomNavBarView(text: "Dividir cuenta")
        Spacer()
    }
}

extension CustomNavBarView {
    private var backButton: some View{
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View{
        Text(text)
            .font(.title)
    }
}

extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}
