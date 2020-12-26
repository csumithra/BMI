//
//  BMICalculator.swift
//  BMI Calculator
//
//  Created by Sumithra Candasamy on 12/26/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMICalculator {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiCalculation = weight / (height * height)
        let adviceText: String
        let color: UIColor
        
        switch(bmiCalculation) {
        case  0..<18.5:
            adviceText = "Eat more pies"
            color = UIColor.blue
            break
        case 18.5..<24.9:
            adviceText = "Fit as a fiddle"
            color = UIColor.green
            break
        case 24.9...1000:
            adviceText = "Stop eating and Workout more!"
            color = UIColor.red
            break
        default:
            adviceText = "Default message"
            color = UIColor.gray
        }
        
        print(bmiCalculation)
        print(adviceText)
        print(color)
        
        bmi = BMI(value: bmiCalculation, advice: adviceText, color: color)
    }
    
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "Default message"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .gray
    }
    
    
    
}
