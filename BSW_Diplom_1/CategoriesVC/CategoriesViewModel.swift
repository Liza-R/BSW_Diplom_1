//
//  CategoriesViewModel.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class CategoriesViewModel{
    
    private var all_categories: [AllCategoriesInfo.DecodedArray] = []
    
    init(){
        uploadCategories()
    }
    
    func uploadCategories(){
        var idSubCat = [[String]](),
            iconImsubCat = [[String]](),
            nameSubCat = [[String]](),
            typeSubCat = [[String]](),
            prodId = [String](),
            name = [String](),
            image = [String](),
            iconImage = [String](),
            iconImageActive = [String]()

        CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async{
                for i in all_categories{
                    idSubCat = Array(repeatElement([], count: i.array.count))
                    iconImsubCat = Array(repeatElement([], count: i.array.count))
                    nameSubCat = Array(repeatElement([], count: i.array.count))
                    typeSubCat = Array(repeatElement([], count: i.array.count))
                    for (u, j) in i.array.enumerated(){
                        prodId.append(j.prodId)
                        name.append(j.name)
                        image.append(j.image ?? "Image NF")
                        iconImage.append(j.iconImage ?? "Icon Image NF")
                        iconImageActive.append(j.iconImageActive ?? "Icon Image Active NF")
                        idSubCat[u] = Array(repeatElement("", count: j.subcategories?.count ?? 0))
                        iconImsubCat[u] = Array(repeatElement("", count: j.subcategories?.count ?? 0))
                        nameSubCat[u] = Array(repeatElement("", count: j.subcategories?.count ?? 0))
                        typeSubCat[u] = Array(repeatElement("", count: j.subcategories?.count ?? 0))
                        if !(j.subcategories?.isEmpty ?? false){
                            for (k, m) in j.subcategories!.enumerated(){
                                idSubCat[u][k] = m.id
                                iconImsubCat[u][k] = m.iconImage ?? "Icon Image NF"
                                nameSubCat[u][k] = m.name
                                typeSubCat[u][k] = m.type
                            }
                        }
                    }
                }
                SaveCategories().savingAllCategoriesInfo(prodId: prodId, name: name, image: image, iconImage: iconImage, iconImageActive: iconImageActive, idSubCat: idSubCat, iconImsubCat: iconImsubCat, nameSubCat: nameSubCat, typeSubCat: typeSubCat)
            }
        }
    }
}
