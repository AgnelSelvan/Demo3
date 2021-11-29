//
//  TableViewController.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    static func loadFromNib() -> TableViewController {
        return TableViewController(nibName: "TableViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Table View"
        
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return productList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        cell.nameLabel.text = productList[indexPath.row].name
        cell.priceLabel.text = "Rs \(productList[indexPath.row].cost)"
        cell.subtitleLabel.text = productList[indexPath.row].producer
        
        getData(from: URL(string: productList[indexPath.row].productImages)! ) { data, response, error in
            guard let data = data, error == nil else { return }
            cell.productImg.image = UIImage(data: data)
        }
        return cell
    }

    
}
