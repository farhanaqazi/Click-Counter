//
//  ViewController.swift
//  Click-Counter
//
//  Created by Farhan Qazi on 6/11/18.
//  Copyright © 2018 Farhan Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Mark: Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        print("View Did Load")
        
        
        // Mark: Button
        
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // Mark: Adding target action to the button
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
}
    
    @objc func incrementCount(){
        
        self.count += 1
        self.label.text = "\(self.count)"
        
    }

}

