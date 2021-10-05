//
//  CategoriesViewController.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 04/10/2021.
//

import UIKit

class CategoriesViewController: UIViewController {
    var all_categories: [AllCategoriesInfo.Info_Mass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CategoriesLoader().loadCategoriesInfo{ all_categories in
            self.all_categories = all_categories
            DispatchQueue.main.async {
                for i in all_categories{
                    print(i)
                }
            }
        }
    }
}
