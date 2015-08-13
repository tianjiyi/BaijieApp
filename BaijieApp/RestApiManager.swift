//
//  RestApiManager.swift
//  BaijieApp
//
//  Created by Jiyi Tian on 7/31/15.
//  Copyright (c) 2015 Jiyi Tian. All rights reserved.
//

import Foundation

typealias ServiceResponse = (JSON, Int, NSError?) -> Void

class RestApiManager: NSObject {
    
    static let sharedInstance = RestApiManager()
    
    let baseURL = "http://192.168.2.10:8080/gee/"
    
    func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse){
        var httpResponse: NSHTTPURLResponse?
        
        let requestPath = baseURL + path
        let request = NSMutableURLRequest(URL: NSURL(string: requestPath)!)
        
        let session = NSURLSession.sharedSession();
        
        println("Start GET REST call: " + requestPath)
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            //println(data)
            httpResponse = response as? NSHTTPURLResponse
            let json:JSON = JSON(data: data)
            //println(json)
            if(httpResponse != nil){
                onCompletion(json, httpResponse!.statusCode, error)
            }
            
        })
        task.resume();
    }
    
    func makeHTTPPostRequest(path: String, body: [String: AnyObject], onCompletion: ServiceResponse){
        var err: NSError?
        var httpResponse: NSHTTPURLResponse?
        
        let requestPath = baseURL + path
        let request = NSMutableURLRequest(URL: NSURL(string: requestPath)!)
        
        request.HTTPMethod = "POST"
        
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(body, options: nil, error: &err)
        request.addValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let session = NSURLSession.sharedSession()
        
        println("Start POST REST call: " + requestPath)
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            httpResponse = response as? NSHTTPURLResponse
            if(httpResponse != nil){
                onCompletion(json, httpResponse!.statusCode, err)
            }
        })
        task.resume()
        
    }
    
    
}