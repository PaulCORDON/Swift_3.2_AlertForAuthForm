//
//  ViewController.swift
//  AlertForAuthForm
//
//  Created by MAC-DIN-002 on 20/05/2019.
//  Copyright © 2019 MAC-DIN-002. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var pswrdTxt: UITextField!
    @IBOutlet weak var pswrdagainTxt: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SignUpClick(_ sender: Any) {
        if(usernameTxt.text == ""){
            let alert = UIAlertController(title: "Empty username", message: "please provide a username", preferredStyle: UIAlertController.Style.alert)
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:nil)
            
            alert.addAction(okBtn)
            self.present(alert, animated: true, completion: nil)
        }else if pswrdTxt.text == ""{
            let alert = UIAlertController(title: "Empty password", message: "please provide a password", preferredStyle: UIAlertController.Style.alert)
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:nil)
            
            alert.addAction(okBtn)
            self.present(alert, animated: true, completion: nil)
        }else if pswrdagainTxt.text != pswrdTxt.text {
            let alert = UIAlertController(title: "Error", message: "please provide a maching password", preferredStyle: UIAlertController.Style.alert)
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:nil)
            
            alert.addAction(okBtn)
            self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Success", message: "\(usernameTxt.text!) is created", preferredStyle: UIAlertController.Style.alert)
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:nil)            
            alert.addAction(okBtn)
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    

}

