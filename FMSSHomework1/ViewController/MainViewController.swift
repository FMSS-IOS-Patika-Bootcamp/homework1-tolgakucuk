//
//  ViewController.swift
//  FMSSHomework1
//
//  Created by Tolga on 6.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//MARK: - TableViewDelegate

extension MainViewController: UITableViewDelegate {
    
}

//MARK: - TableViewDataSource

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}

