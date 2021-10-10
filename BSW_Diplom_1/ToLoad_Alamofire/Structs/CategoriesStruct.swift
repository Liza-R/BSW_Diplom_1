//
//  CategoriesStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllCategoriesInfo{
 
    struct Info_Mass: Decodable{
        var _67_, _68_, _69_, _73_, _156_, _165_, _233_, _0_: Info_Mass_?
        
        private enum CodingKeys: String, CodingKey{
            case _67_ = "67", _68_ = "68", _69_ = "69", _73_ = "73", _156_ = "156", _165_ = "165", _233_ = "233", _0_ = "0"
        }
    }
    
    struct Info_Mass_: Decodable{
        var name: String?,
            sortOrder: String?,
            image: String?,
            iconImage: String?,
            iconImageActive: String?
        
        private enum CatCodingKeys: Int, CodingKey{
            case name, sortOrder, image, iconImage, iconImageActive, subcategories
        }
    
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CatCodingKeys.self)
            do {
                self.name = try container.decode(String.self, forKey: .name)
                self.sortOrder = try container.decode(String.self, forKey: .sortOrder)
                self.image = try container.decode(String.self, forKey: .image)
                self.iconImage = try container.decode(String.self, forKey: .iconImage)
                self.iconImageActive = try container.decode(String.self, forKey: .iconImageActive)
            } catch DecodingError.typeMismatch {
                let value = try container.decode(Int.self, forKey: .sortOrder)
                self.sortOrder = "\(value)"
                self.name = try container.decode(String.self, forKey: .name)
                self.image = try container.decode(String.self, forKey: .image)
                self.iconImage = try container.decode(String.self, forKey: .iconImage)
                self.iconImageActive = try container.decode(String.self, forKey: .iconImageActive)
            }
        }
    }
}
