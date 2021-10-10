//
//  CategoriesViewController.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 04/10/2021.
//

import UIKit

var id = "311"

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var categoriesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CategoriesViewModel().uploadCategories()
    }
}
