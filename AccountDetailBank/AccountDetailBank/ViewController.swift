//
//  ViewController.swift
//  AccountDetailBank
//
//  Created by Raul Bautista on 14/3/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var lastMove: UILabel!
    @IBOutlet weak var accountTable: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountTable.rowHeight = 100
        accountTable.dataSource = self
        accountTable.delegate = self
 
    }


}

// MARK: - Table Methods

extension ViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountTable.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return NSLocalizedString("Account Detail", comment: "")
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

//MARK: - Load Json

extension ViewController {
    
    func loadJson() {
        
        
    }
    
}
    
