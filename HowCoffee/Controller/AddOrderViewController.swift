//
//  AddOrderViewController.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/23.
//

import UIKit

class AddOrderViewController: UIViewController {
    
    private var vm = AddCoffeeOrderViewModel()
 
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet weak var countTextField : UITextField!
    
    private var coffeeSizeSegmentedControl : UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        // Do any additional setup after loading the view.
    }
    
    private func setupUI(){
        self.coffeeSizeSegmentedControl = UISegmentedControl.init(items: self.vm.sizes)
        self.coffeeSizeSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.coffeeSizeSegmentedControl)
        self.coffeeSizeSegmentedControl.topAnchor.constraint(equalTo: self.tableView.bottomAnchor, constant: 20).isActive = true
        self.coffeeSizeSegmentedControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

}

extension AddOrderViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.types.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeTypeTableViewCell", for: indexPath)
        cell.textLabel?.text = self.vm.types[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
}


extension AddOrderViewController{
    @IBAction func save(){
        let name = self.nameTextField.text
        let count = self.countTextField.text
        let size = self.coffeeSizeSegmentedControl.titleForSegment(at: self.coffeeSizeSegmentedControl.selectedSegmentIndex)
        
        guard let indexPath = self.tableView.indexPathForSelectedRow else {
            fatalError("Error in selecting coffee")
        }
        self.vm.name = name
        self.vm.total = Double(count ?? "0")
        self.vm.selectedSize = size
        self.vm.selectedType = self.vm.types[indexPath.row]
        
        Webservice().load(resource: Order.create(vm: self.vm)) { result in
            switch result {
            case .success(let order) :
                print(order)
            case .failure(let error) :
                print(error)
            }
        }
    }
}
