//
//  ResutlViewController.swift
//  BMI Calculator
//
//  Created by Mohamed Ali on 19/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResutlViewController: UIViewController {

    
    //MARK: - OUTLES
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var resutlLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // bmiLable.text = bmi?.value?.decimalPonit(value: (bmi?.value)!)
        if let value = bmi?.value{
            bmiLable.text = value.decimalPonit(value: value)
        }
        resutlLabel.text = bmi?.result
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color

    }
    
    //MARK: - Properites
    
    
    var bmi: BMI?
    

    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
