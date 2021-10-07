//
//  SubCategoriesLoader.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation
import Alamofire

class SubCategoriesLoader{
    func loadSubCategoriesInfo(completion: @escaping ([AllSubCategoriesInfo.Info_Mass]) -> Void){
        AF.request(URL(string: URLs().categories_and_subcategories_url)!, method: .get)
        .validate()
        .responseDecodable(of: AllSubCategoriesInfo.Info_Mass.self) { (response) in
            let errors = response.error as Any
            print(String(describing: errors), "error --> load all categories and subcategories info", response.response?.statusCode as Any)
            guard let all_subcategories_info = response.value else { return }
                completion([all_subcategories_info])
        }
    }
}
