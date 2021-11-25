//
//  CategoriesStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllCategoriesInfo{
    struct DecodedArray: Decodable {
        var array: [Info_Mass_]
        
        private struct DynamicCodingKeys: CodingKey{
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
            var intValue: Int?
            init?(intValue: Int){
                 return nil
            }
        }
//https://swiftsenpai.com/swift/decode-dynamic-keys-json/
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
            var tempArray = [Info_Mass_]()
            for key in container.allKeys {
                let decodedObject = try container.decode(Info_Mass_.self, forKey: DynamicCodingKeys(stringValue: key.stringValue)!)
                tempArray.append(decodedObject)
            }
            array = tempArray
        }
    }
    
    struct Info_Mass_: Decodable{
        let name: String,
            sortOrder: String,//int
            image: String?,
            iconImage: String?,
            iconImageActive: String?,
            subcategories: [SubCat]?
    }
    struct SubCat: Decodable{
        let //id: String,//int
            iconImage: String?,
            //sortOrder: String,//int
            name: String,
            type: String
    }
}
