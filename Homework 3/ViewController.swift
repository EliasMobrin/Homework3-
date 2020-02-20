//
//  ViewController.swift
//  Homework 3
//
//  Created by Elias Mobrin on 2/19/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bunnyImage: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    
    @IBAction func startstopButton(_ sender: Any) {
        
        if (bunnyImage.isAnimating)
        {
            bunnyImage.stopAnimating()
        } else
        {
            bunnyImage.startAnimating()
        }
    }
    
    
    
    @IBAction func setSpeed(_ sender: Any) {
        bunnyImage.animationDuration=TimeInterval(4.0-speedSlider.value)
        bunnyImage.startAnimating()
    }
    
        
    
    
    
    
    @IBAction func imageChange(_ sender: Any) {
        
        backgroundImage.isHidden = true
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hopAnimation: [UIImage] = [
        UIImage(named: "frame-1")!,
        UIImage(named: "frame-2")!,
        UIImage(named: "frame-3")!,
        UIImage(named: "frame-4")!,
        UIImage(named: "frame-5")!,
        UIImage(named: "frame-6")!,
        UIImage(named: "frame-7")!,
        UIImage(named: "frame-8")!,
        UIImage(named: "frame-9")!,
        UIImage(named: "frame-10")!,
        UIImage(named: "frame-11")!,
        UIImage(named: "frame-12")!,
        UIImage(named: "frame-13")!,
        ]
        
        bunnyImage.animationImages=hopAnimation
        bunnyImage.animationDuration=1.0
        
    }


}

