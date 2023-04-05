//
//  DataService.swift
//  List Recipe App
//
//  Created by Krittanan Tandeemaporn on 28/3/2566 BE.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // parse local jason file
        
        // get a local url path to jason file
        
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        
        // create a URL object
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            
            //Create a data object
            
            let data = try Data(contentsOf: url)
            
            
            let decoder = JSONDecoder()
            
            do{
                
                let recipeData = try decoder.decode([Recipe].self , from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                
                return recipeData
            }
            catch{
                print(error)
            }
        }
        
        catch{
            print(error)
        }
        
        // Decode the data with a JSON decoder
        
        //add the unique IDs
        
        // Return the recipes
        
        return [Recipe]()
    }
    
}
