//
//  ViewController.swift
//  Guillermo_G_Storing_default_Values_exercise
//
//  Created by Guillermo Garcia on 8/10/20.
//  Copyright © 2020 Guillermo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySaveButton(_ sender: Any) {
        
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "text")
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    @IBOutlet var mySerialNumber: UITextField!
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

