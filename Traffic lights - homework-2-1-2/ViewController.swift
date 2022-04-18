//
//  ViewController.swift
//  Traffic lights - homework-2-1-2
//
//  Created by Kuznetsov.Vadim on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {    
    
    @IBOutlet var redLightCircle: UIView!
    @IBOutlet var yellowLightCircle: UIView!
    @IBOutlet var greenLightCircle: UIView!
    @IBOutlet weak var btnSwitcher: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    private var someNumber: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightCircle.layer.cornerRadius = redLightCircle.frame.size.width/2
        yellowLightCircle.layer.cornerRadius = yellowLightCircle.frame.size.width/2
        greenLightCircle.layer.cornerRadius = greenLightCircle.frame.size.width/2
        
        redLightCircle.alpha = lightOff
        yellowLightCircle.alpha = lightOff
        greenLightCircle.alpha = lightOff
        
    }
    
    @IBAction func switchingTheLight() {
        switch someNumber {
        case redLightCircle.alpha:
            redLightCircle.alpha = lightOff
            yellowLightCircle.alpha = lightOn
        
        case yellowLightCircle.alpha:
            yellowLightCircle.alpha = lightOff
            greenLightCircle.alpha = lightOn
            
        case greenLightCircle.alpha:
            greenLightCircle.alpha = lightOff
            redLightCircle.alpha = lightOn
            
        default:
            redLightCircle.alpha = lightOn
            btnSwitcher.setTitle("NEXT", for: .normal)
        }
    }
    
}

