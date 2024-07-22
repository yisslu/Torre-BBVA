//
//  Model.swift
//  RealityMoney
//
//  Created by Jesús Lugo Sáenz on 13/07/24.
//

import Foundation
import UIKit
import RealityKit
import Combine

class Model{
    var modelName: String
    var image: UIImage
    var modelEntity: ModelEntity?
    
    private var cacellable: AnyCancellable? = nil
    
    init(modelName: String) {
        self.modelName = modelName
        
        self.image = UIImage(named: modelName)!
        
        let filename = modelName + ".usdz"
        self.cacellable = ModelEntity.loadModelAsync(named: filename)
            .sink(receiveCompletion: { loadCompletion in
                //Handle our error
                print("DEBUG: Unable to load modelEntity for modelName: \(self.modelName)")
            }, receiveValue: { modelEntity in
                //Get our modelEntity
                
                self.modelEntity = modelEntity
                print("DEBUG: successfully loaded modelEntity for modelName: \(self.modelName)")
            })
    }
}
