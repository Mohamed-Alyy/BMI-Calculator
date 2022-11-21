//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var heightLBL: UILabel!
    @IBOutlet weak var weightLBL: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()  
        // Do any additional setup after loading the view.
    }

    //MARK: - Properties
    
    var calcBrain = CalculatorBrain()

    //MARK: - Actinos
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLBL.text = "\(height) Meter"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.1f", sender.value)
        weightLBL.text =  "\(weight) Kg"
        
    }
    
    
 
    @IBAction func claculateBmiPressed(_ sender: UIButton) {
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        calcBrain.calucateBmi(height: height, weight: weight) { bmi in
            if let vc = storyboard?.instantiateViewController(withIdentifier: "ResutlViewController") as? ResutlViewController {
                vc.bmi = bmi
            
        
                self.present(vc, animated: true)
                
            }
        }
          
        
    }
    
}

