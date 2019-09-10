//
//  ViewController.swift
//  ProgressTest
//
//  Created by Mac on 10.09.2019.
//  Copyright © 2019 Varol. All rights reserved.
//

import UIKit
import SRCountdownTimer

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progresss: SRCountdownTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        progresss.start(beginingValue: 180)
        
       

    }
    
}

