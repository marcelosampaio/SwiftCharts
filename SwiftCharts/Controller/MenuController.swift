//
//  MenuController.swift
//  SwiftCharts
//
//  Created by Marcelo Sampaio on 13/08/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - TableView Daelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("index path row: \(indexPath.row)")
        if indexPath.row == 0 {
            performSegue(withIdentifier: "showPieChart", sender: self)
        }
    }

    
    
}
