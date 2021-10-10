//
//  GoodsViewModel.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 05/10/2021.
//

import Foundation

class GoodsViewModel{
    private var all_goods: [AllGoodsInfo.Info_Mass] = []
    func uploadGoods(){
        /*GoodsLoader().loadGoodsInfo{ all_goods in
            self.all_goods = all_goods
            DispatchQueue.main.async {
                for i in all_goods{
                    print(i)
                }
            }
        }*/
    }
}
