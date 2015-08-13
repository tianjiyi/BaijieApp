//
//  LoginViewController.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 7/29/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import UIKit

class LoginViewController: UITableViewController {

   
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    var selectedCountry : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signinTapped(sender: UIButton) {
        NSLog("Signin Tapped with username %@", txtUsername.text)
        let newSessionRequest: [String: AnyObject] = [
            "username" : txtUsername.text,
            "password" : txtPassword.text
        ]
        
        createNewSession(newSessionRequest, onCompletion: {json, statusCode, error in
            let sessionKey: String
            
            if(error == nil && statusCode == 200){
                if (!(json["sessionKey"].stringValue).isEmpty){
                    NSLog("login success with sessionKey: %@", json["sessionKey"].stringValue)
                    sessionKey = json["sessionKey"].stringValue
                    
                    var prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
                    prefs.setObject(self.txtUsername.text, forKey: "USERNAME")
                    prefs.setObject(sessionKey, forKey: "SESSIONKEY")
                    prefs.setInteger(1, forKey: "ISLOGGEDIN")
                    prefs.synchronize()
                    
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
                else{
                    NSLog("login failed with error: %@", "Session Key is empty")
                }
            }else{
                NSLog("login failed with error: %@", statusCode)
            }
        })
    }
    
    @IBAction func selectedCountry(segue:UIStoryboardSegue){
        if let countryPickerViewController = segue.sourceViewController as? CountryPickerController,
            selectedCountry = countryPickerViewController.selectedCountry{
                countryLabel.text = selectedCountry
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PickCountry"{
            if let countryPickerController = segue.destinationViewController as? CountryPickerController{
                countryPickerController.selectedCountry = selectedCountry
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createNewSession(requestSession: [String: AnyObject], onCompletion: ServiceResponse){
        let path = "session/requestLoginSession"
        
        RestApiManager.sharedInstance.makeHTTPPostRequest(path, body: requestSession, onCompletion: onCompletion)
        
    }

}
