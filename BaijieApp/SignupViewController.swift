//
//  SignupViewController.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 7/29/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import UIKit

class SignupViewController: UITableViewController {

    @IBOutlet weak var txtDialingCode: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPasswordConfirm: UITextField!
    
    @IBOutlet weak var txtNickname: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    var selectedCountry : String? = nil
    var dialingCode : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signupTapped(sender: UIButton) {
        println("SignUp Tapped with userName: " + self.txtUsername.text + " password: " + self.txtPassword.text)
        
        let newUser:[String: AnyObject] = [
            "username" : self.txtUsername.text,
            "password" : self.txtPassword.text,
            "nickname" : self.txtNickname.text,
            "phoneNumber" : self.txtDialingCode.text,
            "countryName" : self.countryLabel.text!
        ]
        
        creatNewUser(newUser, onCompletion: {json, statusCode, error in
            println(json)
            if(error == nil && statusCode == 200){
                self.dismissViewControllerAnimated(true, completion: nil)
            }else{
                println(statusCode)
            }
        })
    }
    
    @IBAction func gotoLogin(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func creatNewUser(newUser: [String: AnyObject], onCompletion: ServiceResponse){
        let route = "core/userService/tup/c"
        
        RestApiManager.sharedInstance.makeHTTPPostRequest(route, body: newUser, onCompletion: {json, statusCode, error in
            onCompletion(json as JSON, statusCode, error)
        })
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PickCountry"{
            if let countryPickerController = segue.destinationViewController as? CountryPickerController{
                countryPickerController.selectedCountry = selectedCountry
            }
        }
    }
    
    @IBAction func selectedCountry(segue:UIStoryboardSegue){
        if let countryPickerController = segue.sourceViewController as? CountryPickerController{
            selectedCountry = countryPickerController.selectedCountry
            //dialingCode = countryPickerController.dailingCode
            countryLabel.text = selectedCountry
            txtDialingCode.text = countryPickerController.dailingCode
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

}
