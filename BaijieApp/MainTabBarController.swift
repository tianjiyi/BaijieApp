//
//  MainTabBarController.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 8/4/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let button:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        let image:UIImage = UIImage(named: "main-camera-baijie.png")! as UIImage
        
        button.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin
        
        button.frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height)
        //button.backgroundColor = UIColor.grayColor()
        //button.setTitle("Camera Icon", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        button.setBackgroundImage(image, forState: UIControlState.Normal)
        
        /*let heightDifference:CGFloat = image.size.height - self.tabBar.frame.size.height
        if(heightDifference < 0){
            button.center = self.tabBar.center
        }else{
            let center:CGPoint = self.tabBar.center
            let newCenter:CGPoint = CGPoint(x: center.x, y: self.tabBar.frame.size.height)
            button.center = newCenter
        }*/
        
        let newCenter:CGPoint = CGPoint(x: self.tabBar.center.x, y: self.tabBar.center.y - (UIScreen.mainScreen().bounds.height - self.tabBar.center.y))
        button.center = newCenter
        self.view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    func buttonAction(sender: UIButton!){
        print("Button tapped")
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
            //self.usernameLabel.text = prefs.valueForKey("USERNAME") as! NSString as String
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
