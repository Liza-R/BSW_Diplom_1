//
//  GoodsStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllGoodsInfo{
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
    
    struct Info_Mass_: Decodable{
        var name: String,
            englishName: String,
            article: String,
            collection: String?,
            description: String,
            colorName: String,
            colorImageURL: String,
            mainImage: String,
            productImages: [ProductImages?]?,
            offers: [Offers?]?,
            price: String
    }
    struct ProductImages: Decodable{
        var imageURL: String
    }
    struct Offers: Decodable{
        var size: String,
            productOfferID: String,
            quantity: String
    }
}
