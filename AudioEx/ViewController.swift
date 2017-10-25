//
//  ViewController.swift
//  AudioEx
//
//  Created by YuJungin on 2017. 10. 25..
//  Copyright © 2017년 junginin. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {
    
    let oscillator = AKOscillator() //가장 초보적인 형태의 음향 신디사이저라고 할 수 있는 오실레이터(진동자)
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        oscillator.amplitude = 0.5 //진폭
        AudioKit.output = oscillator
      
        
        
    }
    @IBAction func changeFrequency(_ sender: UISlider) {
        
        oscillator.frequency = Double(sender.value * 880.0)
    }
    
    @IBAction func btnStart(_ sender: Any) {
        AudioKit.start()
        oscillator.start()
        
    }

    @IBAction func btnStop(_ sender: Any) {
        
        AudioKit.stop()
        oscillator.stop()
    }
    

}

