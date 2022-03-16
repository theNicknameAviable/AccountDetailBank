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
        accountTable
 
    }


}

// MARK: - Table Methods

extension ViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
    
