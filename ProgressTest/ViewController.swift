//
//  ViewController.swift
//  ProgressTest
//
//  Created by Mac on 10.09.2019.
//  Copyright © 2019 Varol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: ProgressBar!
    
    var countFired: CGFloat = 180
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (timer) in
            self.countFired -= 1
            print(self.countFired)
            
            
            DispatchQueue.main.async {
                self.progressBar.progress = min(self.countFired, 1)

                if self.progressBar.progress == 0 {
                    timer.invalidate()
                }
            }
        }
        
        

    }
    
}

