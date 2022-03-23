//
//  BankCell.swift
//  AccountDetailBank
//
//  Created by Raul Bautista on 16/3/22.
//


import UIKit

class BankCell: UITableViewCell {
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var arrowImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    func configureView() {
        backgroundColor = .white
    }
    
}
