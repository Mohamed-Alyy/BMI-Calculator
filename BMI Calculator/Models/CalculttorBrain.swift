//
//  CalculttorBrain.swift
//  BMI Calculator
//
//  Created by Mohamed Ali on 19/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    
    mutating func calucateBmi(height: Float , weight: Float, completion:(_ bmi: BMI)->Void){
        let bmiValue = weight / (height * height)
        
        bmiAdvice(bmiValue: bmiValue) { result, advice  , color in
            
            bmi = BMI(value: bmiValue, result: result, color: color, advice: advice)
            completion(bmi!)
        }
    }
    
  
    
    func bmiAdvice(bmiValue: Float,comoletion:(_ result: String ,_ advice: String, _ color:UIColor)->Void){
        var resutl: String?
        var advice: String?
        var color: UIColor?
       
        switch bmiValue {
        case 0..<18.5:
            resutl = "وزن منخفض"
            advice = " يتوحب عليك أكل بعض اللحوم والمكسرات لزيادة وزنك"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            comoletion(resutl!,advice!,color!)
            
        case 18.5...24.9:
            resutl = "وزن طبيعي"
            advice = "وزنك مثالي - يفضل الاكثار من أكل الخضروات والفواكه"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            comoletion(resutl!,advice!,color!)
            
        case 25...:
            resutl = "وزن زائد"
            advice = "يتوجب عليك التقليل من أكل اللحوم والدهون لإنقاص وزنك"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            comoletion(resutl!,advice!,color!)
            
        default:
            break
        }
    }
    
    func getBmiValue() -> String {

        let bmiValue = String(format: "%.1f" ,bmi?.value ?? 0.0 )
          
        return bmiValue
    }
}
