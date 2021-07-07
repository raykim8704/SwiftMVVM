//
//  Stock.swift
//  StockAppSwiftUI
//
//  Created by KwanghoonKim on 2021/07/05.
//

import Foundation

struct Stock : Decodable {
    let symbol : String
    let description : String
    let price: Double
    let change : String
}
