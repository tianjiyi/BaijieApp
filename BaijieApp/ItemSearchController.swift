//
//  ItemSearchController.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 8/4/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import UIKit

class ItemSearchController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var searchBar:UISearchBar = UISearchBar(frame: CGRectMake(0, 0, 300, 20))
        searchBar.placeholder = "搜索想要的宝贝"
        
        var leftNavBarItem = UIBarButtonItem(customView: searchBar)
        self.navigationItem.setRightBarButtonItem(leftNavBarItem, animated: true)
        
        
        
        //self.navigationItem.leftBarButtonItem = UIBarButtonItem.new()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
