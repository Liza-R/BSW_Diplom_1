//
//  SubCategoriesStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllSubCategoriesInfo{
    struct Info_Mass: Decodable{
        var _67_, _68_, _69_, _73_, _156_, _165_, _233_, _0_: Info_Mass_?
        
        private enum CodingKeys: String, CodingKey{
            case _67_ = "67", _68_ = "68", _69_ = "69", _73_ = "73", _156_ = "156", _165_ = "165", _233_ = "233", _0_ = "0"
        }
    }
    struct Info_Mass_: Decodable{
        var subcategories: [Subcategories?]
    }
    
    struct Subcategories: Decodable{
        var id: String?,
            sortOrder: String?,
            iconImage: String?,
            name: String?,
            type: String?
        
        private enum SubSOCodingKeys: Int, CodingKey{
            case id, sortOrder, iconImage, name, type
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: SubSOCodingKeys.self)
            do {
                self.id = try container.decode(String.self, forKey: .id)
                self.sortOrder = try container.decode(String.self, forKey: .sortOrder)
                self.iconImage = try container.decode(String.self, forKey: .iconImage)
                self.name = try container.decode(String.self, forKey: .name)
                self.type = try container.decode(String.self, forKey: .type)
            } catch DecodingError.typeMismatch {
                let valueSO = try container.decode(Int.self, forKey: .sortOrder)
                self.sortOrder = "\(valueSO)"
                do{
                    self.id = try container.decode(String.self, forKey: .id)
                }
                catch DecodingError.typeMismatch {
                    let valueID = try container.decode(Int.self, forKey: .id)
                    self.id = "\(valueID)"
                }
                self.iconImage = try container.decode(String.self, forKey: .iconImage)
                self.name = try container.decode(String.self, forKey: .name)
                self.type = try container.decode(String.self, forKey: .type)
            }
        }
    }
}
