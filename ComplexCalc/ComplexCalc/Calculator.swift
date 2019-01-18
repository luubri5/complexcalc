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
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func add(_ array: [Int]) -> Int {
        var sum = 0;
        for i in 0...array.count - 1 {
            sum += array[i]
        }
        return sum
    }
    
    func multiply(_ array: [Int]) -> Int {
        var sum = 1;
        for i in 0...array.count - 1 {
            sum *= array[i]
        }
        return sum
    }
   
    
    func count(_ array: [Int]) -> Int {
        return array.count
    }
  
    func avg(_ array: [Int]) -> Int {
       return add(array) / count(array)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var final = beg
        for i in args {
            final = op(i, final)
        }
        return final
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
}


