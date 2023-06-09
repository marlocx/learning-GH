//
//  ContentView.swift
//  List Recipe App
//
//  Created by Krittanan Tandeemaporn on 28/3/2566 BE.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe:r), label: {
                    HStack(spacing: 10.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                            .padding(.top, 3)
                    }
                })
                        
                
            }
            .navigationBarTitle("All Recipes")
        }
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
