//
//  main.swift
//  HelloWorld
//
//  Created by Martin Vivanco on 27/3/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import Foundation

print("Please enter a positive integer: ")
let input: Int? = Int(readLine()!)
if input == nil {
    print("Input was not a number")
    exit(1)
}

let num: Int = input!
if num < 1 {
    print("Number was not positive")
    exit(2)
}

var isPrime: Bool = true
let max: Double = Double(num).squareRoot()
for i in 2...Int(max) {
    if num % i == 0 {
        isPrime = false
        break
    }
}

if (isPrime) {
    print("\(num) is prime")
}
else {
    print("\(num) is not prime")
}
