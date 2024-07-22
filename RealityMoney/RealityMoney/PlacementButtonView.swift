//
//  PlacementButtonView.swift
//  RealityMoney
//
//  Created by Jesús Lugo Sáenz on 13/07/24.
//

import SwiftUI

struct PlacementButtonView: View {
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: Model?
    @Binding var modelConfirmedForPlacement: Model?
    var body: some View {
        HStack{
            //Cancel button
            Button(action: {
                print("DEBUG: model placement canceled.")
                self.resetPlamentParameters()
            }){
                Image(systemName: "xmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white.opacity(0.75))
                    .clipShape(Circle())
                    .padding(20)
            }
            
            //Confirm button
            
            Button(action: {
                print("DEBUG: model placement confirmed.")
                
                self.modelConfirmedForPlacement = self.selectedModel
                self.resetPlamentParameters()
            }){
                Image(systemName: "checkmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white.opacity(0.75))
                    .clipShape(Circle())
                    .padding(20)
            }
        }
    }
    
    func resetPlamentParameters(){
        self.isPlacementEnabled = false
        self.selectedModel = nil
    }
}

#Preview {
    PlacementButtonView(isPlacementEnabled: .constant(true), selectedModel: .constant(Model(modelName: "services")), modelConfirmedForPlacement: .constant(Model(modelName: "services")))
}
