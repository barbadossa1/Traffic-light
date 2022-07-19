//
//  ViewController.swift
//  Traffic lights - homework-2-1-2
//
//  Created by Kuznetsov.Vadim on 13.04.2022.
//

import UIKit

// list the name of the traffic light colors

enum CurrentLight {
    case red, yellow, green
}

class MyViewController: UIViewController {    
    
    @IBOutlet var redLightCircle: UIView!
    @IBOutlet var yellowLightCircle: UIView!
    @IBOutlet var greenLightCircle: UIView!
    
    @IBOutlet var btnSwitcher: UIButton!
    
    
    // setting the contrast of the traffic light colors
    
    private var currentLight = CurrentLight.red
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightCircle.layer.cornerRadius = redLightCircle.frame.size.width/2
        yellowLightCircle.layer.cornerRadius = yellowLightCircle.frame.size.width/2
        greenLightCircle.layer.cornerRadius = greenLightCircle.frame.size.width/2
        
        // switch off the traffic lights
        
        redLightCircle.alpha = lightOff
        yellowLightCircle.alpha = lightOff
        greenLightCircle.alpha = lightOff
        
    }
    
    // set the rules for button and lights in function
    
    @IBAction func switchTheLights(){
        if btnSwitcher.currentTitle == "Start"{
            btnSwitcher.setTitle("Next", for: .normal)
        }
        switch currentLight {
        case .red:
            redLightCircle.alpha = lightOn
            yellowLightCircle.alpha = lightOff
            greenLightCircle.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            yellowLightCircle.alpha = lightOn
            greenLightCircle.alpha = lightOff
            redLightCircle.alpha = lightOff
            currentLight = .green
        case .green:
            greenLightCircle.alpha = lightOn
            redLightCircle.alpha = lightOff
            yellowLightCircle.alpha = lightOff
            currentLight = .red
        }
    }
    
}

