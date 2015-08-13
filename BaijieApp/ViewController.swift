//
//  ViewController.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 7/29/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        getUserMetaData{json in
            println("Connected server")
        }
        
        
        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
        if(isLoggedIn != 1){
            self.performSegueWithIdentifier("goto_login", sender: self)
        }else{
            self.usernameLabel.text = prefs.valueForKey("USERNAME") as! NSString as String
        }
        
        
    }

    @IBAction func logoutTapped(sender: UIButton) {
        let appDomain = NSBundle.mainBundle().bundleIdentifier
        NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain!)
        
        self.performSegueWithIdentifier("goto_login", sender: self)
    }
    
    func getUserMetaData(onCompletion: (JSON)-> Void){
        let route = "core/userService"
        
        RestApiManager.sharedInstance.makeHTTPGetRequest(route, onCompletion: {json, statusCode, error in
            onCompletion(json as JSON)
        })
        
    }
}

