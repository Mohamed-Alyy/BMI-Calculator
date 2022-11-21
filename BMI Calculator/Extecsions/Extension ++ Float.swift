//
//  Extension ++ String.swift
//  BMI Calculator
//
//  Created by Mohamed Ali on 19/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

extension Float {
    
    func decimalPonit(value: Float) -> String {
        let decimalValue = String(format: "%.1f" ,value )
          
        return decimalValue
    }
}
