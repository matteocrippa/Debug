//
//  Debug.swift
//  Boostco.de
//
//  Created by Matteo Crippa on 7/21/16.
//  Copyright © 2016 Matteo Crippa. All rights reserved.
//

import Foundation

public func print(items: Any..., separator: String = " ", terminator: String = "\n") {
    
    #if DEBUG
        var idx = items.startIndex
        let endIdx = items.endIndex
        
        repeat {
            Swift.print(items[idx], separator: separator, terminator: idx == (endIdx - 1) ? terminator : separator)
            idx += 1
        }
            while idx < endIdx
    #endif
}