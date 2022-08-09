//
//  ResultViewController.swift
//  Stress Calculator
//
//  Created by Rohan Dalmotra on 02/08/21.
//

import UIKit

class ResultViewController: UIViewController {
    var stressValue: String?
    @IBOutlet weak var stressLabel: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stressLabel.text = "\(stressValue!)N/m2"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
