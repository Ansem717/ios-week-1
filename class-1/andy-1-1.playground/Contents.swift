//: Playground - noun: a place where people can play

import UIKit

//***********
//-----1-----
//  Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number
//-----------

func toNumber(str: String) -> Int? {
    guard let strToNum = Int(str) else {
        return nil
    }
    
    return strToNum
}

var hundred = toNumber("100")
var notanumb = toNumber("interesting...")


//***********
//-----2-----
// Write a function that takes in a tuple (code, message) and returns a string by using interpolation
//-----------


func displayTuple(code: Int, message: String) -> String {
    let codedMessage: String = "Error number: \(code) - \(message)"
    return codedMessage
}

let tuhpull = (404, message: "Request not found")
displayTuple(tuhpull)


//***********
//-----3-----
// Write a function that take in a string, and returns a message: “String contains n characters”
//-----------


func lengthOfString(str: String) -> String {
    let length = String(str.endIndex)
    let text = "String contains \(length) characters."
    return text
}

let superstring = "John Jacob Jingleheimer Schmidt"
lengthOfString(superstring)


//***********
//-----4-----
// Write a function that takes in a string and reverses it. Use simple for loop
//-----------


func reverseString(str: String) -> String? {
    let length = str.characters.count
    var revStr = ""
    for var i = 1; i <= length; i++ {
        let findCharacter = str.startIndex.advancedBy(length-i)
        let currCharacter: Character = str[findCharacter]
        revStr += String(currCharacter)
    }
    return revStr
}

reverseString(superstring) // INPUT: John Jacob Jingleheimer Schmidt || OUTPUT: tdimhcS remiehelgniJ bocaJ nhoJ

// I spent a good majority of my time on this one. I kept getting a BAD_INSTRUCTION error down here on line 70 which made it really hard to debug.
// I went line by line until I realized that the issue was on line 63, and it had to do with the math inside the .advancedBy() function.
// The overall problem was I was iterating this loop 32 times, when I should've only done it 31 times! Changing the inital value of i to equal 1 fixed it.

//***********












