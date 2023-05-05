//
//  RecipeTabView.swift
//  List Recipe App
//
//  Created by Krittanan Tandeemaporn on 5/5/2566 BE.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            Text("Featured View")
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Tab 1")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Tab 2")
                    }
                }
            
        }
        

    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
