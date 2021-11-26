//
//  ReturnInfo.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 26/11/2021.
//

import Foundation
import RealmSwift

class ReturnInfoModels{
    func returnAllCategories() -> Results<AllCategories>{
        return SaveCategories().realm.objects(AllCategories.self)
    }
}
