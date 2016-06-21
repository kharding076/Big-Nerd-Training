//
//  ViewController.swift
//  Buggy
//
//  Created by Juan Pablo Claude on 12/21/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: "buttonTapped:", forControlEvents: .TouchUpInside)
        print("ViewController address: \(self)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func buttonTapped(sender: UIButton) {
        print("Method: \(__FUNCTION__) in file: \(__FILE__) line: \(__LINE__) called.")
        
        badMethod()
    }

    
    func badMethod() {
        let array = NSMutableArray()
        
        for i in 0..<10 {
            array.insertObject(i, atIndex: i)
        }
        
        for _ in 0..<10 {
            array.removeObjectAtIndex(0)
        }
    }

}
