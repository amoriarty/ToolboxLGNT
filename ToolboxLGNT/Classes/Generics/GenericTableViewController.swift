//
//  GenericTableViewController.swift
//  ToolboxLGNT
//
//  Created by Émilie Legent on 14/02/2018.
//

import UIKit

open class GenericTableViewController<T: GenericTableViewCell<U>, U: Any>: UITableViewController {
    private let reuseid = "ReuseID"
    open var items: [[U]]? { return nil }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
        setupTableView()
        tableView.register(T.self, forCellReuseIdentifier: reuseid)
    }
    
    open func setupViews() {}
    open func setupLayouts() {}
    open func setupTableView() {}

    open override func numberOfSections(in tableView: UITableView) -> Int {
        return items?.count ?? 0
    }

    open override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?[section].count ?? 0
    }
    
    open override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseid) as? T else {
            fatalError("Cannot cast table view cell as T")
        }
        
        cell.item = items?[indexPath.section][indexPath.row]
        return cell
    }
}
