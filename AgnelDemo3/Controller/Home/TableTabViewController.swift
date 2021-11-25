//
//  TableTabViewController.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import UIKit

class TableTabViewController: UIViewController {

    
    @IBAction func onTableTap() {
//        let data = getAllProducts()
//        print("Data : \(data.count)")
//        for item in data {
//            print(item)
//        }
        self.navigationController?.pushViewController(TableViewController.loadFromNib(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
