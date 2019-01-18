//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add (lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract (lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply (lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide (lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func add (_ list: [Int]) -> Int {
        if list.isEmpty {
            return 0
        } else {
            var result = 0
            for i in list {
                result = result + i
            }
            return result
         }
    }
    
    func multiply (_ list: [Int]) -> Int {
        if list.isEmpty {
            return 0
        } else {
            var result = 1
            for i in list {
                result = result * i
            }
            return result
        }
    }
    
    func count (_ list: [Int]) -> Int {
        return list.count
    }
    
    func avg (_ list: [Int]) -> Int {
        if list.isEmpty {
            return 0
        }
        var result = 0
        for i in list {
            result = result + i
        }
        return result / list.count
    }
    
    func mathOp (lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp (args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = op(beg, args[0])
        for i in 1..<args.count {
            result = op(result, args[i])
        }
        return result
    }
    
    func add (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func add (lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract (lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
}
