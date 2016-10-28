//
//  AccountView.swift
//  MasterCard
//
//  Created by Yinting Huang on 10/28/16.
//  Copyright © 2016 Yinting Huang. All rights reserved.
//

import UIKit

class AccountView: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addAddr: UIButton!
    @IBOutlet weak var addCard: UIButton!
    
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var cardName: UITextField!
    @IBOutlet weak var cardNum: UITextField!
    @IBOutlet weak var cardDate: UITextField!
    @IBOutlet weak var cardSec: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardName.delegate = self
        cardNum.delegate = self
        cardDate.delegate = self
        cardSec.delegate = self

        // Do any additional setup after loading the view.
        
        addAddr.layer.cornerRadius = 5
        addCard.layer.cornerRadius = 5
        submit.layer.cornerRadius = 5
        
        
        cardName.text = "Name on Card"
        cardName.textColor = UIColor.lightGrayColor()
        cardNum.text = "Card Number"
        cardNum.textColor = UIColor.lightGrayColor()
        cardDate.text = "MM/YYYY"
        cardDate.textColor = UIColor.lightGrayColor()
        cardSec.text = "CSC"
        cardSec.textColor = UIColor.lightGrayColor()
        
        cardName.hidden = true
        cardNum.hidden = true
        cardDate.hidden = true
        cardSec.hidden = true
        submit.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didBeginEditing(sender: UITextField) {
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.textColor == UIColor.lightGrayColor() {
            textField.text = nil
            textField.textColor = UIColor.blackColor()
        }
    }
    
    @IBAction func newCard(sender: AnyObject) {
        cardName.hidden = false
        cardNum.hidden = false
        cardDate.hidden = false
        cardSec.hidden = false
        submit.hidden = false
    }
    
    @IBAction func submitForm(sender: AnyObject) {
        
        cardName.hidden = true
        cardNum.hidden = true
        cardDate.hidden = true
        cardSec.hidden = true
        submit.hidden = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
