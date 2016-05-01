//
//  ViewController.swift
//  stop watch
//
//  Created by Jayadev Akkiraju on 3/21/16.
//  Copyright © 2016 Jayadev Akkiraju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var count = 0
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func reset(sender: AnyObject) {
        count = 0
        timerCount.text = "\(count)"
        
    }
    
    @IBOutlet weak var timerCount: UILabel!
    
    func result(){
        print(count)
        timerCount.text = "\(count)"
        count++
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        play(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

