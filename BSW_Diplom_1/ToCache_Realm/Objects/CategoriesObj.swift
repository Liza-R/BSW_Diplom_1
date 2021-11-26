//
//  CategoriesObj.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation
import RealmSwift

class AllCategories: Object {
    @objc dynamic var id = ""
    @objc dynamic var name = ""
    @objc dynamic var image = ""
    @objc dynamic var iconImage = ""
    @objc dynamic var iconImageActive = ""
    let subcategories = List<AllSubCategories>()
}

class AllSubCategories: Object{
    @objc dynamic var id = ""
    @objc dynamic var iconImage = ""
    @objc dynamic var name = ""
    @objc dynamic var type = ""
}
