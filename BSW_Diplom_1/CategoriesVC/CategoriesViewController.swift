//
//  CategoriesViewController.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 04/10/2021.
//

import UIKit

var id = "311"

class CategoriesViewController: UIViewController {
    var all_categories: [AllCategoriesInfo.Info_Mass] = [],
        all_sub_categories: [AllSubCategoriesInfo.Info_Mass] = [],
    all_goods: [AllGoodsInfo.Info_Mass] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        /*CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async {
                for i in all_categories{
                    print(i)
                }
            }
        }*/
        
        SubCategoriesLoader().loadSubCategoriesInfo{ all_sub_categories in
            self.all_sub_categories = all_sub_categories
            DispatchQueue.main.async {
                for i in all_sub_categories{
                    print(i)
                }
            }
        }
        
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
