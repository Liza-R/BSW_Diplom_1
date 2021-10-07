//
//  GoodsStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllGoodsInfo{
    struct Info_Mass: Decodable{
        var _7156_219_, _7157_219_, _8003_219_, _8112_219_: Info_Mass_?
        
        private enum CodingKeys: String, CodingKey{
            case _7156_219_ = "7156_219", _7157_219_ = "7157_219", _8003_219_ = "8003_219", _8112_219_ = "8112_219"
        }
    }
    
    struct Info_Mass_: Decodable{
        var name: String,
            sortOrder: String,
            englishName: String,
            article: String,
            collection: String,
            description: String,
            colorName: String,
            colorImageURL: String,
            mainImage: String,
            productImages: [ProductImages?]?,
            offers: [Offers?]?,
            price: String
    }
    struct ProductImages: Decodable{
        var imageURL: String,
            sortOrder: String
    }
    struct Offers: Decodable{
        var size: String,
            productOfferID: String,
            quantity: String
    }
}
