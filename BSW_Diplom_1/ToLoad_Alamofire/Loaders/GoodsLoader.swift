//
//  GoodsLoader.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation
import Alamofire

class GoodsLoader{
    func loadGoodsInfo(completion: @escaping ([AllGoodsInfo.DecodedArray]) -> Void){
        AF.request(URL(string: URLs().goods_url)!, method: .get)
        .validate()
        .responseDecodable(of: AllGoodsInfo.DecodedArray.self) { (response) in
            let errors = response.error as Any
            print(String(describing: errors), "error --> load all goods info", response.response?.statusCode as Any)
            guard let all_goods_info = response.value else { return }
                completion([all_goods_info])
        }
    }
}
