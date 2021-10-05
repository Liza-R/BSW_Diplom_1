//
//  GoodsStruct.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class AllGoodsInfo{
    struct Info_Mass: Decodable{
        var name: String,
            sortOrder: String,
            englishName: String,
            article: String,
            collection: String?,
            description: String,
            colorName: String,
            colorImageURL: String,
            mainImage: String,
            productImages: [ProductImages?],
            offers: [Offers?],
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
