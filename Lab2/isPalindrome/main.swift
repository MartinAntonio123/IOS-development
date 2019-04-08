//
//  main.swift
//  isPalindrome
//
//  Created by Martin Vivanco on 27/3/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import Foundation

func getNumber() -> Int {
    // Code to enter a number from the console.
    // return a non-nil Int
    let input: Int? = Int(readLine()!)
    if input == nil{
        print("not a number")
        exit(1)
    }
    let num: Int = input!
    return num
}

func isPalindrome(_ number: Int) -> Bool {
    // Code to test if a number is a palindrome.
    // return true or false
    print(number)
    let aux = String(number)
    let comp = String(aux.reversed())
    if comp == aux {
        return true
    }
    return false
    
}

// main routine

let number: Int = getNumber()
if isPalindrome(number) {
    print("\(number) is a palindrome")
}
else {
    print("\(number) is not a palindrome")
}
