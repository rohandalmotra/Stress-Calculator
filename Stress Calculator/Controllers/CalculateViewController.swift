//
//  ViewController.swift
//  Stress Calculator
//
//  Created by Rohan Dalmotra on 28/07/21.
//

import UIKit

class CalculateViewController: UIViewController, UITextFieldDelegate {
    var brain = Brain()
    
    @IBOutlet weak var leftForceTextField: UITextField!
    @IBOutlet weak var rightSideLabel: UILabel!
    @IBOutlet weak var areaTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightSideLabel.text = leftForceTextField.placeholder
        leftForceTextField.delegate = self
        areaTextField.delegate = self
      
      
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        rightSideLabel.text = leftForceTextField.text
        leftForceTextField.endEditing(true)
        areaTextField.endEditing(true)
        
        
        
        let force = leftForceTextField.text!
        let area = areaTextField.text!
        let doubleForce = Double(force)!
        let doubleArea = Double(area)!
        brain.calculateStress(force: doubleForce, area: doubleArea)
        
        
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.stressValue = brain.getStressValue()
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        rightSideLabel.text = leftForceTextField.text
        textField.endEditing(true)
                return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }
        else{ textField.placeholder = "Type"
            return false
            
        }
    }
  
    
    

     
    
    
   
    
    
    
}

