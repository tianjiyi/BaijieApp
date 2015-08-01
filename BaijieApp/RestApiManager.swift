//
//  RestApiManager.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 7/31/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import Foundation

typealias ServiceResponse = (JSON, NSError?) -> Void

class RestApiManager: NSObject {
    
    static let sharedInstance = RestApiManager()
    
    let baseURL = "http://192.168.2.10:8080/gee/"
    
    func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse){
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        let session = NSURLSession.sharedSession();
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            //println(data)
            let json:JSON = JSON(data: data)
            //println(json)
            onCompletion(json, error)
            
        })
        task.resume();
    }
    
    func makeHTTPPostRequest(path: String, body: [String: AnyObject], onCompletion: ServiceResponse){
        var err: NSError?
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        request.HTTPMethod = "POST"
        
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(body, options: nil, error: &err)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, err)
        })
        task.resume()
        
    }
    
    func getUserMetaData(onCompletion: (JSON)-> Void){
        let route = baseURL + "user/"
        
        println("Start REST call :" + route)
        
        makeHTTPGetRequest(route, onCompletion: {json, error in
            onCompletion(json as JSON)
        })
        
    }
    
    
    
    
}