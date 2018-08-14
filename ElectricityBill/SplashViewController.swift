//
//  ViewController.swift
//  ElectricityBill
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        perform(#selector(self.goToLogin), with: nil, afterDelay: 5)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func goToLogin()
{
    performSegue(withIdentifier: "ShowLoginScreen", sender: self)
    
    }

}

