//
//  Calculator.swift
//  BasicUIComponents
//
//  Created by Yavuz Selim Bitmez on 18.09.2021.
//

import Foundation


class Calculator {

    func proces(first: Double, second: Double, operation: String) -> Double{
        var result = 0.0
        switch operation {
        case "+": result = addition(first: first, second: second)
        case "-": result = subtraction(first: first, second: second)
        case "/": result = divison(first: first, second: second)
        case "*": result = multiplication(first: first, second: second)
        default: break
        }
        return result
    }
    private func addition(first:Double,second:Double) -> Double {
        return first + second
    }
    
    private func subtraction(first:Double,second:Double) -> Double {
        return first - second
    }
    
    private func multiplication(first:Double,second:Double) -> Double {
        return first * second
    }
    
    private func divison(first:Double,second:Double) -> Double {
        return first / second
    }

}
