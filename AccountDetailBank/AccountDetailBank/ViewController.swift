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
    static let host: String = "https://api.myjson.com/bins/1a30k8"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK: - Table Methods

extension ViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

// MARK: - Fetch Info API

extension ViewController {
    
    func fetchInfo() {
        
        
    }
    
    
}
