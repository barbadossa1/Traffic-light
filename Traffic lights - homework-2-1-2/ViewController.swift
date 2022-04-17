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
    @IBOutlet var buttonSwitcher: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightCircle.layer.cornerRadius = redLightCircle.frame.size.width/2
        yellowLightCircle.layer.cornerRadius = yellowLightCircle.frame.size.width/2
        greenLightCircle.layer.cornerRadius = greenLightCircle.frame.size.width/2
        
    }
    
    var someNumber: CGFloat = 0.3
    
    @IBAction func switchingTheLight() {
        switch someNumber {
        case redLightCircle.alpha:
            redLightCircle.alpha = 0.3
            yellowLightCircle.alpha = 1
        
        case yellowLightCircle.alpha:
            yellowLightCircle.alpha = 0.3
            greenLightCircle.alpha = 1
            
        case greenLightCircle.alpha:
            greenLightCircle.alpha = 0.3
            redLightCircle.alpha = 1
            
        default:
            redLightCircle.alpha = 1
            buttonSwitcher.setTitle("NEXT", for: .normal)
        }
    }
    
}

