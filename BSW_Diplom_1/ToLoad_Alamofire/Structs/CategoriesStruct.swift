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
    
    struct Info_Mass_ : Decodable{
        var prodId: String,
            name: String,
            image: String?,
            iconImage: String?,
            iconImageActive: String?,
            subcategories: [SubCat]?
        
        private enum CatCodingKeys: CodingKey{
            case name, sortOrder, image, iconImage, iconImageActive, subcategories
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CatCodingKeys.self)
            self.prodId = container.codingPath.first!.stringValue
            self.name = try container.decode(String.self, forKey: .name)
            self.image = try container.decode(String.self, forKey: .image)
            self.iconImage = try container.decode(String.self, forKey: .iconImage)
            self.iconImageActive = try container.decode(String.self, forKey: .iconImageActive)
            self.subcategories = try container.decode([SubCat].self, forKey: .subcategories)
        }
    }
    
    struct SubCat: Decodable{
        var id: String,
            iconImage: String?,
            name: String,
            type: String
        
        private enum SubCatKeys: CodingKey{
            case id, iconImage, sortOrder, name, type
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: SubCatKeys.self)
            do{
               self.id = try container.decode(String.self, forKey: .id)
               self.iconImage = try container.decode(String.self, forKey: .iconImage)
               self.name = try container.decode(String.self, forKey: .name)
               self.type = try container.decode(String.self, forKey: .type)
            }catch DecodingError.typeMismatch{
                let value1 = try container.decode(Int.self, forKey: .id)
                self.id = "\(value1)"
                self.iconImage = try container.decode(String.self, forKey: .iconImage)
                self.name = try container.decode(String.self, forKey: .name)
                self.type = try container.decode(String.self, forKey: .type)
            }
        }
    }
}
