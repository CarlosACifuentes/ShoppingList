//
//  ViewController.swift
//  ShoppingList
//
//  Created by Carlos Cifuentes on 2021-10-28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var ShoppingListName: UITextField!
    
    @IBAction func onSaveButtonPressed(_ sender: UIButton) {
        self.ShoppingListName.resignFirstResponder()
    }
    
    //Built in method
    //Found on thenewboston youtube channel to hide the keyboard: https://www.youtube.com/watch?v=HI4JV7ClXB0
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

