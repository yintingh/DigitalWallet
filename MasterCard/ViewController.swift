//
//  ViewController.swift
//  MasterCard
//
//  Created by Yinting Huang on 10/28/16.
//  Copyright © 2016 Yinting Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pw: UITextField!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var logIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logIn.layer.cornerRadius = 5
        user.text = "Username"
        user.textColor = UIColor.lightGrayColor()
        pw.text = "Password"
        pw.textColor = UIColor.lightGrayColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pwEdit(sender: UITextField) {
        if sender.textColor == UIColor.lightGrayColor() {
            sender.text = nil
            sender.textColor = UIColor.blackColor()
        }
    }
    @IBAction func userEdit(sender: UITextField) {
        if sender.textColor == UIColor.lightGrayColor() {
            sender.text = nil
            sender.textColor = UIColor.blackColor()
        }
    }
}

