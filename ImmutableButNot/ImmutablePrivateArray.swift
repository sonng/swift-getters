//
//  ImmutablePrivateArray.swift
//  ImmutableButNot
//
//  Created by Son.Nguyen on 12/01/2016.
//  Copyright © 2016 son. All rights reserved.
//

import Foundation

class ImmutablePrivateArray<T> {
    var immutableArray: [T] = []
    var views: [T] {
        get {
            var b = immutableArray
            return b
        }
        set {
            print("Setter is called")
            immutableArray = newValue
        }
    }
    
    
    var anotherArray = NSMutableArray()
    var otherValues: NSMutableArray {
        get {
            var b = anotherArray
            return b
        }
        set {
            anotherArray = newValue
        }
    }
}