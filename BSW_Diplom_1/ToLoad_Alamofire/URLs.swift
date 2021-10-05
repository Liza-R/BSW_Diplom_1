//
//  URLs.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class URLs{
    let categories_and_subcategories_url = "http://blackstarshop.ru/index.php?route=api/v1/categories".encodeUrl,
        goods_url = "http://blackstarshop.ru/index.php?route=api/v1/products&cat_id=ID".encodeUrl
}

extension String{
    var encodeUrl: String{
        return self.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
    }
    var decodeUrl: String{
        return self.removingPercentEncoding!
    }
}
