//
//  TableViewController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class TableViewController: GenericTableViewController<TableCell, String> {
    override var items: [[String]]? {
        return [["Generic View Controller", "Generic Collection View Controller", "Adaptive Fonts", "Text View Padding", "Regex"]]
    }
    
    private let controllers = [
        GenericController(),
        CollectionViewController(),
        AdaptiveController(),
        PaddingController(),
        RegexController()
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Table View Controller: view did load")
        view.backgroundColor = .white
        title = "ToolboxLGNT"
    }
    
    override func setupViews() {
        super.setupViews()
        print("Table View Controller: setup views")
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("Table View Controller: setup layouts")
    }
    
    override func setupTableView() {
        super.setupTableView()
        print("Table View Controller: setup table view")
        tableView.backgroundColor = .clear
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(controllers[indexPath.item], animated: true)
    }
}
