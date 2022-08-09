//
//  Brain.swift
//  Stress Calculator
//
//  Created by Rohan Dalmotra on 02/08/21.
//

import Foundation

struct Brain{
    var stress: Double?
    mutating func calculateStress(force: Double, area: Double){
        stress = force / area
       
    }
    
    func getStressValue() -> String{
        let stringStress = String(format: "%.2f", stress ?? 0.0)
        return stringStress
    }
    
}
