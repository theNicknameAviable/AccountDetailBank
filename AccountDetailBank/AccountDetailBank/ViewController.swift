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
    var accountDetail : [Transaction] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountTable.rowHeight = 100
        accountTable.dataSource = self
        accountTable.delegate = self
        accountDetail = loadJson(filename: "AccountDetail")
    }

}

// MARK: - Table Methods

extension ViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountDetail.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return NSLocalizedString("Account Detail", comment: "")
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BankCell", for: indexPath) as? BankCell
        cell?.amount.text = "VAT: \(accountDetail[indexPath.row].tramount)"
        cell?.date.text = accountDetail [indexPath.row].trfecha
        
        if accountDetail[indexPath.row].tramount > 0 {
            cell?.lineView.backgroundColor = UIColor(red: 0.37, green: 0.56, blue: 0.22, alpha: 1.00)
            cell?.arrowImageView.tintColor = UIColor(red: 0.37, green: 0.56, blue: 0.22, alpha: 1.00)
        } else {
            cell?.lineView.backgroundColor = UIColor(red: 0.56, green: 0.04, blue: 0.11, alpha: 1.00)
            cell?.arrowImageView.tintColor = UIColor(red: 0.56, green: 0.04, blue: 0.11, alpha: 1.00)
        }

        if let safeCell = cell {
            return safeCell
        }
        return UITableViewCell()
    }
    
}

//MARK: - Load Json

extension ViewController {
    
    func loadJson(filename AccountDetail: String) -> [Transaction]  {
        if let url = Bundle.main.url(forResource: AccountDetail, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(WelcomeElement.self, from: data)
                return jsonData.transaction
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
        
}

//MARK: - Date Formatter

extension ViewController {
    
    func dateConsult(date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm dd/MM/yyyy"
        let dateConsultFinal = dateFormatter.string(from: date)
        return dateConsultFinal
    }
    
}
    

    
