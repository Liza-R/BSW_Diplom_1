//
//  CategoriesViewController.swift
//  BSW_Diplom_1
//
//  Created by Elizaveta Rogozhina on 04/10/2021.
//

import UIKit

var id = "292"

class CategoriesViewController: UIViewController{
    
    @IBOutlet weak var categoriesTable: UITableView!
    
    private var categories = ReturnInfoModels().returnAllCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesTable.delegate = self
        categoriesTable.rowHeight = 100
        categoriesTable.dataSource = self
        categoriesTable.tableFooterView = UIView()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        CategoriesViewModel().uploadCategories()
        categories = ReturnInfoModels().returnAllCategories()
        categoriesTable.reloadData()
    }
}

extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView_Alam: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    func tableView(_ tableView_Alam: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView_Alam.dequeueReusableCell(withIdentifier: "categories_Cell", for: indexPath) as! CategoriesTableViewCell
        cell.categoryImage.image = .actions
        cell.categoryNameLabel.text = categories[indexPath.row].name
        return cell
    }
}
