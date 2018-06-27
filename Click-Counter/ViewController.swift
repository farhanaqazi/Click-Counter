//
//  ViewController.swift
//  Click-Counter
//
//  Created by Farhan Qazi on 6/11/18.
//  Copyright © 2018 Farhan Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Mark: Global Variables
    var count = 0
    var Holder1 : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Creating subviews for the Label and the Buttom
        
        // Mark: Label
        let label = UILabel() // allocation and intialization of a label
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60) // setting up frame
        label.text = "0" // initial set to zero
        view.addSubview(label) // Calling the view property, adding label as subview
        Holder1 = label
        print("View Did Load")
        
        
        // Mark: Button
        
        let button = UIButton() // allocation and intialization of the button
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60) // setting up frame
        button.setTitle("Click", for: .normal) // Giing buttom a title
        button.setTitleColor(UIColor.blue, for: .normal) // setting a color for the button
        view.addSubview(button) // Calling the view property, adding button as subview
        
        // Mark: Adding target action to the button
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
}
    
    @objc func incrementCount(){
        
        self.count += 1
        Holder1.text = "\(self.count)"
        
    }

}

