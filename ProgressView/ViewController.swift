//
//  ViewController.swift
//  ProgressView
//
//  Created by 季 雲 on 2017/10/13.
//  Copyright © 2017 Ericji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: ProgressView!
    var percentage: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { [weak self] (timer) in
            self?.percentage += 0.1
            if Int((self?.percentage)!) == 1 {
                timer.invalidate()
            } else {
                self?.progressView.percentage = (self?.percentage)!
                print(self?.percentage)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

