//
//  main.swift
//  calc
//
//  Created by Martin Vivanco
//  Copyright © 2018 UTS. All rights reserved.
//
import Foundation
import Darwin

func suma(val1: Int, val2: Int) -> Int {
    return val1+val2
}
func resta(val1: Int, val2: Int) -> Int {
    return val1-val2
}
func multiplica(val1: Int, val2: Int) -> Int {
    return val1*val2
}
func division(val1: Int, val2: Int) -> Int {
    if (val2 == 0){
        print("Invalid division")
        exit(4)
    }
    return val1/val2
}
func modulo(val1: Int, val2: Int) -> Int {
    if (val2 == 0){
        print("Invalid modulus")
        exit(5)
    }
    return val1%val2
}


var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
var longitud = args.count //length of args
//print(longitud)
//validate args
var i = 0
while(i<longitud)
{
    if(i%2 == 0){
        let num = Int(args[i])
        if num == nil {
            print("Invalid Parameters1")
            exit(1)
        }
    }
    else{
        if (args[i] != "x")&&(args[i] != "/")&&(args[i] != "%")&&(args[i] != "+")&&(args[i] != "-"){
            print("Invalid Parameters2")
            exit(2)
        }
    }
    i = i+1
}
if (longitud%2 != 1){
    print("Invalid Parameters3")
    exit(3)
}
var cont = 0
while(args.contains("x")||args.contains("/")||args.contains("%"))
{
    if(args[cont]=="x"){
        let aux = multiplica(val1: Int(args[cont-1])!, val2: Int(args[cont+1])!)
        args[cont-1]=String(aux)
        args.remove(at: cont)
        args.remove(at: cont)
    }
    else if(args[cont]=="/"){
        let aux = division(val1: Int(args[cont-1])!, val2: Int(args[cont+1])!)
        args[cont-1]=String(aux)
        args.remove(at: cont)
        args.remove(at: cont)
    }
    else if(args[cont]=="%"){
        let aux = modulo(val1: Int(args[cont-1])!, val2: Int(args[cont+1])!)
        args[cont-1]=String(aux)
        args.remove(at: cont)
        args.remove(at: cont)
        
    }
    else{
        cont = cont + 1
    }
}
cont = 0
while(args.contains("+")||args.contains("-"))
{
    if(args[cont]=="+"){
        let aux = suma(val1: Int(args[cont-1])!, val2: Int(args[cont+1])!)
        args[cont-1]=String(aux)
        args.remove(at: cont)
        args.remove(at: cont)
    }
    else if(args[cont]=="-"){
        let aux = resta(val1: Int(args[cont-1])!, val2: Int(args[cont+1])!)
        args[cont-1]=String(aux)
        args.remove(at: cont)
        args.remove(at: cont)
    }
    else{
        cont = cont + 1
    }
}
print(Int(args[0])!)
