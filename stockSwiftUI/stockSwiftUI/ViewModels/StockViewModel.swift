//
//  StockViewModel.swift
//  stockSwiftUI
//
//  Created by KwanghoonKim on 2021/07/19.
//

import Foundation

struct StockViewModel {
    let stock : Stock
    var symbol : String {
        return self.stock.symbol.uppercased()
    }
    var description : String {
        return self.stock.description
    }
    
    var price : String {
        return String(format: "%.2f", self.stock.price)
    }
    var chagne : String {
        return self.stock.change
    }
}
