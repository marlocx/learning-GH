//
//  SwiftUIView.swift
//  List Recipe App
//
//  Created by Krittanan Tandeemaporn on 29/3/2566 BE.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment:.leading){
                //MARK:Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                
                //MARK:Ingredients
                VStack(alignment: .leading ) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                        
                    
                    ForEach(recipe.ingredients, id: \.self){ item in
                        Text("• "+item)
                    }
                }
                .padding(.horizontal)
                
                //MARK:divider
                Divider()
                
                //MARK:Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    
                    ForEach(0...recipe.directions.count-1, id:\.self){ index in
                        Text(String(index+1)+". "+recipe.directions[index])
                            .padding(.bottom, 1.0)
                    }
                }
                .padding(.horizontal)
            }
            
            
        }
        .navigationBarTitle(recipe.name)
  
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
