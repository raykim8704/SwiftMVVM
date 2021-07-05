//
//  AddCoffeeOrderViewModelj.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/24.
//

import Foundation

struct AddCoffeeOrderViewModel{
    var name : String?
    
    var selectedType : String?
    var selectedSize : String?
    var total : Double?
    
    var types : [String] {
        return CoffeeType.allCases.map{ $0.rawValue.capitalized }
    }
    var sizes : [String]{
        return CoffeSize.allCases.map{ $0.rawValue.capitalized }
    }
}
