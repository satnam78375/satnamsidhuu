//
//  LoginViewController.swift
//  ElectricityBill
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lblEmail: UITextField!
    
    @IBOutlet weak var lblPassword: UITextField!
    @IBOutlet weak var lblLogin: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bttnLogin(_ sender: UIButton) {
        
        if lblEmail.text == "admin" && lblPassword.text == "123"
        {
         /*   let myAlert = UIAlertController(title: "Alert", message: "Login Succesfull", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)*/
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let homeViewController = storyBoard.instantiateViewController(withIdentifier: "electricityVc") as! ElectricityBillViewController
                self.present(homeViewController, animated: true, completion: nil)

            
        }
            
        else{
            
            let myAlert = UIAlertController(title: "Alert", message: "Login Failed", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)
            
            
        }
        
    }
    

}
