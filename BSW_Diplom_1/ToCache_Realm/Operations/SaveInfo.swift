//
//  SaveInfo.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation
import RealmSwift

class SaveCategories{
    var realm = try! Realm()
    
    func saveCategories(prodId: [String], name: [String], image: [String], iconImage: [String], iconImageActive: [String], idSubCat: [[String]], iconImsubCat: [[String]], nameSubCat: [[String]], typeSubCat: [[String]]){
        
        RemoveOldInfo().removeOldCategoriesInfo(saveRealm: realm)
        
        for (i, j) in prodId.enumerated(){
            let infoCateg = Category()
            infoCateg.id = j
            infoCateg.name = name[i]
            infoCateg.image = image[i]
            infoCateg.iconImage = iconImage[i]
            infoCateg.iconImageActive = iconImageActive[i]
            if !idSubCat[i].isEmpty{
                for k in 0...idSubCat[i].count - 1{
                    let infoSubCateg = SubCategory()
                    infoSubCateg.id = idSubCat[i][k]
                    infoSubCateg.iconImage = iconImsubCat[i][k]
                    infoSubCateg.name = nameSubCat[i][k]
                    infoSubCateg.type = typeSubCat[i][k]
                    infoCateg.subcategories.append(infoSubCateg)
                }
            }else{
                let infoSubCateg = SubCategory()
                infoSubCateg.id = ""
                infoSubCateg.iconImage = ""
                infoSubCateg.name = ""
                infoSubCateg.type = ""
                infoCateg.subcategories.append(infoSubCateg)
            }

            try! realm.write{
                realm.add(infoCateg)
            }
        }
    }
}
