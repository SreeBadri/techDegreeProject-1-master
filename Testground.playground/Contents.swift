//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let unsortedDictionary = ["4": "four", "2": "two", "1": "one", "3": "three"]

let sortedDictionary = unsortedDictionary.sorted(by: { $0.0.key < $0.1.key })

print(sortedDictionary)
