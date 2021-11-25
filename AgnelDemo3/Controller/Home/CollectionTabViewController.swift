//
//  CollectionTabViewController.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import UIKit

class CollectionTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCollectionTap() {
        self.navigationController?.pushViewController(CollectionViewController.loadFromNib(), animated: true)
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
