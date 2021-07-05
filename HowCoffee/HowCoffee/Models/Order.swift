//
//  Order.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/23.
//

import Foundation

enum CoffeeType : String , Codable, CaseIterable {
    case cappuchino
    case latte
    case espressino
    case cortado
}
enum CoffeSize : String, Codable, CaseIterable {
    case small
    case medium
    case large
}

struct Order : Codable {
    let name : String
    let coffeeName : CoffeeType
//    let type : CoffeeType
    let total : Double
    let size : CoffeSize
}

extension Order{
    static var  all : Resource<[Order]> = {
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else{
            fatalError("URL is incorrect")
        }
        return Resource<[Order]>(url: url)
    }()
    static func create(vm: AddCoffeeOrderViewModel) -> Resource<Order?>{
        let order = Order(vm)
        
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else{
            fatalError("URL is incorrect")
        }
        guard let data = try? JSONEncoder().encode(order) else {
            fatalError("Encoding Error")
        }
        var resource = Resource<Order?>(url: url)
        resource.httpMethod = .post
        resource.body = data
        
        return resource
        
    }
}

extension Order{
    init?(_ vm:AddCoffeeOrderViewModel){
        guard let name = vm.name,
              let coffeeName  = CoffeeType.init(rawValue:(vm.selectedType!.lowercased())),
              let coffeeSize = CoffeSize.init(rawValue: vm.selectedSize!.lowercased()),
              let total = vm.total
        else {
            return nil
        }
        self.name = name
        self.coffeeName = coffeeName
        self.size = coffeeSize
        self.total = total
    }
}
