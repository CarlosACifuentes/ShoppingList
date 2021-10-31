//
//  ViewController.swift
//  ShoppingList
//
//  Created by Carlos Cifuentes on 2021-10-28.
//

import UIKit

class ViewController: UIViewController {
    
    var itemOneCounter: Int = 0
    var itemTwoCounter: Int = 0
    var itemThreeCounter: Int = 0
    var itemFourCounter: Int = 0
    var ListName = ""
    
    @IBOutlet weak var counterOneLabel: UILabel!
    @IBOutlet weak var counterTwoLabel: UILabel!
    @IBOutlet weak var counterThreeLabel: UILabel!
    @IBOutlet weak var counterFourLabel: UILabel!
    @IBOutlet weak var counterFiveLabel: UILabel!
    
    @IBOutlet weak var ItemFiveStepper: UIStepper!
    @IBOutlet weak var ShoppingListName: UITextField!
    @IBOutlet weak var itemOneTextField: UITextField!
    @IBOutlet weak var itemTwoTextField: UITextField!
    @IBOutlet weak var itemThreeTextField: UITextField!
    @IBOutlet weak var itemFourTextField: UITextField!
    @IBOutlet weak var itemFiveTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onControlsItemOnePressed(_ sender: UIButton)
    {
        if sender.tag == 2 && itemOneCounter < 10
        {
            itemOneCounter = itemOneCounter + 1
            
        }
        else if sender.tag == 1 && itemOneCounter > 0
        {
            itemOneCounter -= 1
        }
            
        counterOneLabel.text = "\(itemOneCounter)"
        
    }
    
    
    @IBAction func onControlsItemTwoPressed(_ sender: UIButton) {
        if sender.tag == 2 && itemTwoCounter < 10
        {
            itemTwoCounter += 1
            
        }
        else if sender.tag == 1 && itemTwoCounter > 0
        {
            itemTwoCounter -= 1
        }
            
        counterTwoLabel.text = "\(itemTwoCounter)"
        
    }
    
    @IBAction func onControlsItemThreePressed(_ sender: UIButton) {
        if sender.tag == 2 && itemThreeCounter < 10
        {
            itemThreeCounter += 1
            
        }
        else if sender.tag == 1 && itemThreeCounter > 0
        {
            itemThreeCounter -= 1
        }
            
        counterThreeLabel.text = "\(itemThreeCounter)"
        
    }
    
    @IBAction func onControlsItemFourPressed(_ sender: UIButton) {
        if sender.tag == 2 && itemFourCounter < 10
        {
            itemFourCounter += 1
            
        }
        else if sender.tag == 1 && itemFourCounter > 0
        {
            itemFourCounter -= 1
        }
            
        counterFourLabel.text = "\(itemFourCounter)"
        
    }
    
    @IBAction func onStepperPressed(_ sender: UIStepper) {

        counterFiveLabel.text = String("\(Int(sender.value))")
    }
    
    
    @IBAction func onCancelButtonPressed(_ sender: UIButton) {
       
        let notificationCancel = UIAlertController(title: "Wait!", message: "You are about to delete your list, are you sure?", preferredStyle: .alert)

                notificationCancel.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                    self.itemOneCounter = 0
                    self.itemTwoCounter = 0
                    self.itemThreeCounter = 0
                    self.itemFourCounter = 0
                    self.ItemFiveStepper.value = 0
                    self.counterOneLabel.text = "\(self.itemOneCounter)"
                    self.counterTwoLabel.text = "\(self.itemTwoCounter)"
                    self.counterThreeLabel.text = "\(self.itemThreeCounter)"
                    self.counterFourLabel.text = "\(self.itemFourCounter)"
                    self.counterFiveLabel.text = "0"
                    self.ShoppingListName.text = "My Shopping list"
                    self.itemOneTextField.text?.removeAll()
                    self.itemTwoTextField.text?.removeAll()
                    self.itemThreeTextField.text?.removeAll()
                    self.itemFourTextField.text?.removeAll()
                    self.itemFiveTextField.text?.removeAll()
                }))
                notificationCancel.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

                self.present(notificationCancel, animated: true)
    }
    
    
    
    
    
    
    @IBAction func onSaveButtonPressed(_ sender: UIButton) {
        let notificationSave = UIAlertController(title: "Oops!", message: "This functionality will be available soon.", preferredStyle: .alert)

        notificationSave.addAction(UIAlertAction(title: "Got it!", style: .default, handler: nil))

        self.present(notificationSave, animated: true)
    }
    
    //Built in method
    //Found on thenewboston youtube channel to hide the keyboard: https://www.youtube.com/watch?v=HI4JV7ClXB0
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

