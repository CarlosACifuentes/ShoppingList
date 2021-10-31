/*
Autor: Carlos Cifuentes.
StudentID: 301140805
Date: 10/31/2021
Version: 1
Description: MAPD714 - iOS Development. Mid-TermTest. Simple Shopping List App.
 */

import UIKit

class ViewController: UIViewController {
    
    //Int variables for counters.
    var itemOneCounter: Int = 0
    var itemTwoCounter: Int = 0
    var itemThreeCounter: Int = 0
    var itemFourCounter: Int = 0

    // Referencing Outlets of counter Labels
    @IBOutlet weak var counterOneLabel: UILabel!
    @IBOutlet weak var counterTwoLabel: UILabel!
    @IBOutlet weak var counterThreeLabel: UILabel!
    @IBOutlet weak var counterFourLabel: UILabel!
    @IBOutlet weak var counterFiveLabel: UILabel!
    
    // Referencing Outlets of Items textFields
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
    
// functions to increase or decrease quantity on each item (min 0, max 10).
    
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
        //assigns number to the item label text.
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
    // additional function to implement stepper, assigns stepper current value to the item label.
    @IBAction func onStepperPressed(_ sender: UIStepper) {

        counterFiveLabel.text = String("\(Int(sender.value))")
    }
    
    // function of cancell button, shows alert to double check if the user is possibite about resoring data.
    // Restores all values to the default state.
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
    
    //function for save button, sends alertt to notify users the functionality is not ready yet.
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

