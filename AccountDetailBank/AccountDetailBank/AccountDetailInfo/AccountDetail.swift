//
//  AccountDetail.swift
//  AccountDetailBank
//
//  Created by Raul Bautista on 16/3/22.
//

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let transaction: [Transaction]
}

// MARK: - Transaction
struct Transaction: Codable {
    let id: Int
    let accountIban, treference, trfecha: String
    let tramount, trfee: Double
    let trdescription, trchannel: String

    enum CodingKeys: String, CodingKey {
        case id
        case accountIban = "account_iban"
        case treference, trfecha, tramount, trfee, trdescription, trchannel
    }
}

typealias Welcome = [WelcomeElement]
