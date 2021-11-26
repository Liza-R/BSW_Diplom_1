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

    func savingAllCAtegoriesInfo(prodId: String, name: String, image: String, iconImage: String, iconImageActive: String, idSubCat: [String], iconImsubCat: [String], nameSubCat: [String], typeSubCat: [String]){
        let infoCateg = AllCategories()
        
        infoCateg.id = prodId
        infoCateg.name = name
        infoCateg.image = image
        infoCateg.iconImage = iconImage
        infoCateg.iconImageActive = iconImageActive
        
        for (i, j) in idSubCat.enumerated(){
            let infoSubCateg = AllSubCategories()
            infoSubCateg.id = j
            infoSubCateg.iconImage = iconImsubCat[i]
            infoSubCateg.name = nameSubCat[i]
            infoSubCateg.type = typeSubCat[i]
            infoCateg.subcategories.append(infoSubCateg)
        }
        try! realm.write{
            realm.add(infoCateg)
        }
        print(infoCateg)
        print(ReturnInfoModels().returnAllCategories().count)
        //savingAllUsers.accept(true)
        //RemoveOldInfo().removeOldUsersInfo()
    }
}
