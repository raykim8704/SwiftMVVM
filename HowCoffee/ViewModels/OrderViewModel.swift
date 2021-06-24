//
//  OrderViewModel.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/24.
//

import Foundation

class OrderListViewModel {
    var ordersViewModel : [OrderViewModel]
    init() {
        self.ordersViewModel = [OrderViewModel]()
    }
}

extension OrderListViewModel{
    func orderViewModelList(at index:Int) -> OrderViewModel{
        return self.ordersViewModel[index]
    }
}

struct OrderViewModel {
    let order : Order
    
}
extension OrderViewModel{
    var name : String {
        return self.order.name
    }
    var coffeeName : String {
        return self.order.coffeeName.rawValue.capitalized
    }
    var total : Double{
        return self.order.total
    }
    var size : String {
        return self.order.size.rawValue.capitalized
    }
}
