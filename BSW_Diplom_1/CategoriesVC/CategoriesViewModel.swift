//
//  CategoriesViewModel.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class CategoriesViewModel{
    
    private var all_categories: [AllCategoriesInfo.Info_Mass] = []
    
    func uploadCategories(){
        var names: [String] = [],
            sortOrders: [String] = [],
            images: [String] = [],
            iconImages: [String] = [],
            iconImageActivites: [String] = []
        
        CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async {
                for i in all_categories{
                    names.append(i._0_?.name ?? "Category Not Found")
                }
            }
        }
    }
}
