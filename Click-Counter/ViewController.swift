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
    var count1 = 0
    var count2 = 0
    
    var Holder1 : UILabel!
    var Holder2 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Creating subviews for the Label and the Buttom
        
        // Mark: Label1
        let label = UILabel() // allocation and intialization of a label
        label.frame = CGRect(x: 120, y: 150, width: 60, height: 60) // setting up frame
        label.text = "0" // initial set to zero
        view.addSubview(label) // Calling the view property, adding label as subview
        Holder1 = label
        print("View Did Load Label 1 created")
        
        // Mark: Label2
        let label2 = UILabel() // allocation and intialization of a 2nd label
        label2.frame = CGRect(x: 60, y: 125, width: 250, height: 60) // setting up frame
        label2.text = "Your Incremanting Count is:" // text to be displayed
        view.addSubview(label2)
        print("View Did Load Label 2 created")
        
        // Mark: Label3
        let label3 = UILabel() // allocation and intialization of a 2nd label
        label3.frame = CGRect(x: 80, y: 205, width: 60, height: 60) // setting up frame
        label3.text = "0" // text to be displayed
        view.addSubview(label3)
        Holder2 = label3
        print("View Did Load Label 3 created")
        
        
        
        // Mark: Button1
        
        let button = UIButton() // allocation and intialization of the button
        button.frame = CGRect(x: 150, y: 280, width: 160, height: 160) // setting up frame
        button.setTitle("Increment", for: .normal) // Giving button a title
        button.setTitleColor(UIColor.blue, for: .normal) // setting a color for the button
        view.addSubview(button) // Calling the view property, adding button as subview
        
        // Mark: Adding target action to the button
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Mark: Button2
        
        let button2 = UIButton() // allocation and intialization of the button
        button2.frame = CGRect(x: 150, y: 350, width: 160, height: 160) // setting up frame
        button2.setTitle("Decrement", for: .normal) // Giving button a title
        button2.setTitleColor(UIColor.red, for: .normal) // setting a color for the button
        view.addSubview(button2) // Calling the view property, adding button as subview
        
        // Mark: Adding target action to the button
        
        button2.addTarget(self, action: #selector(ViewController.DecrementCount), for: UIControlEvents.touchUpInside)
        
        
        
    }
    
    @objc func incrementCount(){
        
        self.count1 += 1
        Holder1.text = "\(self.count1)"
        
    }
    @objc func DecrementCount(){
        
        self.count2 -= 1
        Holder2.text = "\(self.count2)"
        
    }
}





//import UIKit
//
//class ViewController: UIViewController {
//    // Mark: Global Variables
//    var count = 0
//
//
////    var Holder1 : UILabel!
//    var Holder2 : UILabel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Creating subviews for the Label and the Buttom
//
////        // Mark: Label1
////        let label1 = UILabel() // allocation and intialization of a label
////        label1.frame = CGRect(x: 120, y: 150, width: 60, height: 60) // setting up frame
////        label1.text = "0" // initial set to zero
////        view.addSubview(label1) // Calling the view property, adding label as subview
////        Holder1 = label1
////        print("View Did Load Label 1 created")
//
//        // Mark: Label2
//        let label2 = UILabel() // allocation and intialization of a 2nd label
//        label2.frame = CGRect(x: 60, y: 125, width: 250, height: 60) // setting up frame
//        label2.text = "Your Current Count is:" // text to be displayed
//        view.addSubview(label2)
//        print("View Did Load Label 2 created")
//
//        // Mark: Label3
//        let label3 = UILabel() // allocation and intialization of a 2nd label
//        label3.frame = CGRect(x: 80, y: 205, width: 60, height: 60) // setting up frame
//        label3.text = "Go" // text to be displayed
//        view.addSubview(label3)
//        Holder2 = label3
//        print("View Did Load Label 3 created")
//
//
//
//        // Mark: Button1
//
//        let button1 = UIButton() // allocation and intialization of the button
//        button1.frame = CGRect(x: 150, y: 280, width: 160, height: 160) // setting up frame
//        button1.setTitle("Increment", for: .normal) // Giving button a title
//        button1.setTitleColor(UIColor.blue, for: .normal) // setting a color for the button
//        view.addSubview(button1) // Calling the view property, adding button as subview
//
//        // Mark: Adding target action to the button
//
//        button1.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
//
//        // Mark: Button2
//
//        let button2 = UIButton() // allocation and intialization of the button
//        button2.frame = CGRect(x: 150, y: 350, width: 160, height: 160) // setting up frame
//        button2.setTitle("Decrement", for: .normal) // Giving button a title
//        button2.setTitleColor(UIColor.red, for: .normal) // setting a color for the button
//        view.addSubview(button2) // Calling the view property, adding button as subview
//
//        // Mark: Adding target action to the button
//
//        button2.addTarget(self, action: #selector(ViewController.DecrementCount), for: UIControlEvents.touchUpInside)
//
//
//
//    }
//
//    @objc func incrementCount(){
//
//        count = count + 1
//        Holder2.text = "\(self.count)"
//        print("Increment button pressed")
//      // Switch Between Red and Blue Background view
//
//        func bgColorToggle(){
//            if count % 2 == 0 {
//                self.view.backgroundColor = UIColor.red
//            }
//            else {
//                self.view.backgroundColor = UIColor.blue
//            }
//        }
//
//    }
//    @objc func DecrementCount(){
//
//        count = count - 1
//
//        Holder2.text = "\(self.count)"
//         print("Decrement button pressed")
//        // Switch Between Red and Blue Background view
//        func bgColorToggle(){
//            if count % 2 == 0 {
//                self.view.backgroundColor = UIColor.red
//            }
//            else {
//                self.view.backgroundColor = UIColor.blue
//            }
//        }
//
//    }
//
//
//
//}
