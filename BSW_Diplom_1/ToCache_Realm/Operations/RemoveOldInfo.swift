//
//  RemoveOldInfo.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class RemoveOldInfo{
    func removeOldCatsInfo(){
        let modelCurrent = SaveCategories().realm.objects(AllCategories.self)
        if modelCurrent.first != nil && modelCurrent.count > 2{
            try! SaveCategories().realm.write {
                SaveCategories().realm.delete(modelCurrent.first!)
            }
        }
    }
}
