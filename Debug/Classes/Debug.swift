//
//  Debug.swift
//  Boostco.de
//
//  Created by Matteo Crippa on 7/21/16.
//  Copyright © 2016 Matteo Crippa. All rights reserved.
//

import AlamofireRouter
import Foundation

var debugRemoteURI = ""

public class Debug {
        
    public class func set(remoteURI uri: String) {
        debugRemoteURI = uri
    }
    
    public class func print(items: Any..., separator: String = " ", terminator: String = "\n") {
        #if DEBUG
            var idx = items.startIndex
            let endIdx = items.endIndex
            
            repeat {
                Swift.print(items[idx], separator: separator, terminator: idx == (endIdx - 1) ? terminator : separator)
                
                if debugRemoteURI.characters.count > 0 {
                    Alamofire.request(DebugAPI.console(log: String(items[idx])))
                }
                idx += 1
                
            } while idx < endIdx
        #endif
    }
}

enum DebugAPI: RouterProtocol {
    
    case console(log: String)
    
    var router: Router { return Router(baseURL: debugRemoteURI ) }
    
    public func asURLRequest() throws -> URLRequest {
        
        switch self {
            
        case .console(let log):
            return router.endPoint(path: "/", method: .post, parameters: [ "log": log ])
            
        }
        
    }
    
}
