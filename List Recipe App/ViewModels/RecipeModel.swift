//
//  RecipeModel.swift
//  List Recipe App
//
//  Created by Krittanan Tandeemaporn on 28/3/2566 BE.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
    }
}
