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
//        var names: [String] = [],
//            sortOrders: [String] = [],
//            images: [String] = [],
//            iconImages: [String] = [],
//            iconImageActivites: [String] = []

        CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async {
                /*for i in all_categories{
                    names.append(i._0_?.name ?? "Name Not Found")
                    names.append(i._156_?.name ?? "Name Not Found")
                    names.append(i._165_?.name ?? "Name Not Found")
                    names.append(i._233_?.name ?? "Name Not Found")
                    names.append(i._67_?.name ?? "Name Not Found")
                    names.append(i._68_?.name ?? "Name Not Found")
                    names.append(i._69_?.name ?? "Name Not Found")
                    
                    sortOrders.append(i._0_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._156_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._165_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._233_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._67_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._68_?.sortOrder ?? "sortOrder Not Found")
                    sortOrders.append(i._69_?.sortOrder ?? "sortOrder Not Found")
                    
                    images.append(i._0_?.image ?? "Image Not Found")
                    images.append(i._156_?.image ?? "Image Not Found")
                    images.append(i._165_?.image ?? "Image Not Found")
                    images.append(i._233_?.image ?? "Image Not Found")
                    images.append(i._67_?.image ?? "Image Not Found")
                    images.append(i._68_?.image ?? "Image Not Found")
                    images.append(i._69_?.image ?? "Image Not Found")
                    
                    iconImages.append(i._0_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._156_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._165_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._233_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._67_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._68_?.iconImage ?? "iconImage Not Found")
                    iconImages.append(i._69_?.iconImage ?? "iconImage Not Found")
                    
                    iconImageActivites.append(i._0_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._156_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._165_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._233_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._67_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._68_?.iconImageActive ?? "iconImageActive Not Found")
                    iconImageActivites.append(i._69_?.iconImageActive ?? "iconImageActive Not Found")
                }*/
            }
        }
    }
}
