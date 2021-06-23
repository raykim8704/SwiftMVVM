//
//  Order.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/23.
//

import Foundation

enum CoffeeType : String , Codable {
    case cappuchino
    case latte
    case espressino
    case cortado
}
enum CoffeSize : String, Codable {
    case small
    case medium
    case large
}

struct Order : Codable {
    let name : String
    let email : String
    let type : CoffeeType
    let size : CoffeSize
}
