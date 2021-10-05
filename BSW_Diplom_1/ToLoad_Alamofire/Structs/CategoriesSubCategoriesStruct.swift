//
//  CategoriesStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllCategoriesInfo{
    struct Info_Mass: Decodable{
        var name: String,
            sortOrder: String,
            image: String,
            iconImage: String,
            iconImageActive: String,
            subcategories: [Subcategories?]
    }
    
    struct Subcategories: Decodable{
        var id: String,
            sortOrder: String,
            iconImage: String?,
            name: String,
            type: String
    }
}
