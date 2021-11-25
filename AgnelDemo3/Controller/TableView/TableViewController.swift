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
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        self.tableView.rowHeight = 80
        self.tableView.reloadData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productList.count
    }
    
    var data = [
        [
            "id": 1,
            "product_category_id": 1,
            "name": "Centre Coffee Table",
            "producer": "Luna",
            "description": "Mild Steel Base In Poder Coated White Finish.8 mm Tempered Glass Table Top.Bottom Shelf In Paimted Brown Glass.",
            "cost": 5000,
            "rating": 3,
            "view_count": 27471,
            "created": "2015-09-07T09:24:05+0000",
            "modified": "2021-11-23T10:40:54+0000",
            "product_images": "http://staging.php-dev.in:8844/trainingapp/uploads/prod_img/thumb/medium/9dc6234da018916e545011fa1.jpeg"
        ]]
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        cell.nameLabel.text = productList[indexPath.row].name
        cell.priceLabel.text = "Rs \(productList[indexPath.row].cost)"
        cell.subtitleLabel.text = productList[indexPath.row].producer
//        cell.setTitle(cities[indexPath.row], for: .normal)
        
        getData(from: URL(string: productList[indexPath.row].productImages)! ) { data, response, error in
            guard let data = data, error == nil else { return }
            
            DispatchQueue.main.async() { [weak self] in
                cell.productImg.image = UIImage(data: data)
            }
        }
        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            productList.remove(at: indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.reloadData()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
