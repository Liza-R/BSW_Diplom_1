//
//  RemoveOldInfo.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation
import RealmSwift

class RemoveOldInfo{
    func removeOldCategoriesInfo(saveRealm: Realm){
        try! saveRealm.write {
            saveRealm.deleteAll()
        }
    }
}
