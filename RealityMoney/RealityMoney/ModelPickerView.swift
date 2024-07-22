//
//  ModelPickerView.swift
//  RealityMoney
//
//  Created by Jesús Lugo Sáenz on 13/07/24.
//

import SwiftUI

struct ModelPickerView: View {
    
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: Model?
    var models: [Model]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(0 ..< self.models.count){
                    index in
                    Button(action: {
                        print("DEGUB: selected model with name: \(self.models[index].modelName)")
                        self.selectedModel = self.models[index]
                        self.isPlacementEnabled = true
                    }){
                        Image(uiImage: self.models[index].image)
                            .resizable()
                            .frame(height: 80)
                            .aspectRatio(1/1, contentMode: .fit)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 12))
                    }.buttonStyle(PlainButtonStyle())
                }
            }
        }
        .padding(20)
        .background(Color.blue.opacity(0.5))
    }
}

#Preview {
    ModelPickerView(isPlacementEnabled: .constant(true), selectedModel: .constant(Model(modelName: "trips")), models: [Model(modelName: "trips")])
}
