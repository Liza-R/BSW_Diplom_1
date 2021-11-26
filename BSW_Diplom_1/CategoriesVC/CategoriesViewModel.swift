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
        var idSubCat: [String] = [],
            iconImsubCat: [String] = [],
            nameSubCat: [String] = [],
            typeSubCat: [String] = []

        CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async {
                for i in all_categories{
                    for j in i.array{
                        if !(j.subcategories?.isEmpty ?? false){
                            for h in j.subcategories!{
                                idSubCat.append(h.id)
                                iconImsubCat.append(h.iconImage ?? "Icon Images Not Found")
                                nameSubCat.append(h.name)
                                typeSubCat.append(h.type)
                            }
                        }else{
                            idSubCat.append("")
                            iconImsubCat.append("")
                            nameSubCat.append("")
                            typeSubCat.append("")
                        }
                        SaveCategories().savingAllCAtegoriesInfo(prodId: j.prodId, name: j.name, image: j.image ?? "Images Not Found", iconImage: j.iconImage ?? "Icon Images Not Found", iconImageActive: j.iconImageActive ?? "Icon Image Activites Not Found", idSubCat: idSubCat, iconImsubCat: iconImsubCat, nameSubCat: nameSubCat, typeSubCat: typeSubCat)
                    }
                }
            }
        }
    }
}
