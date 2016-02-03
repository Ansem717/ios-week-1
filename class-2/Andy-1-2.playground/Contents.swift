//: Playground - noun: a place where people can play

import UIKit

/**************************************************************************************************************************
|                                                        Problem #1                                                       |
|                                                                                                                         |
| Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns |
**************************************************************************************************************************/

var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var arrayWithoutEarth = ["Moon", "Titan", "Foo", "Bar"]

func findOrAddEarth(var array: [String]) -> String {
    var result = ""
    if array.contains("Earth") {
        result = "Earth"
    } else {
        array.append("Earth")
        result = "Earth has been added"
    }
    return result
}

findOrAddEarth(planets)
findOrAddEarth(arrayWithoutEarth)

/***********************************************************************************************************
|                                                Problem #2                                                |
|                                                                                                          |
| Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth” |
***********************************************************************************************************/

var newPlanetsArray = planets.reduce("Planets: ") {$0+$1+", "}
newPlanetsArray


/***********************************************************************************
|                                    Problem #2                                    |
|                                                                                  |
| Declare and implement a dictionary that can contain as values Strings, Ints, etc |
***********************************************************************************/

var dictionary = ["Andy" : 100, "Joe" : 70, "Mary": 120] //Was this the expectation? Was I supposed to do anything with the dictionary?


/******************************************************************************************************************************
|                                                          Problem #1                                                         |
|                                                                                                                             |
| Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter |
******************************************************************************************************************************/

var dicString = ["firstName": "Andy", "lastName": "Malik", "Hobby": "Coding"]

let stringParam = "Hobby"
var dsfiltered = dicString.filter { $0.0 == "\(stringParam)" } //$0 = the item at the current index, and .0 after it means we're looking at the key
                                                               //we could do $0.1 to look at the value instead of the key.
print(dsfiltered)


/*****************************************************************************
|                                 Problem #2                                 |
|                                                                            |
| Write examples for union, intersect, subtract, exclusive Or set operations |
*****************************************************************************/


var myFirstSet: Set = [1, 2, 3, 4, 5]
var mySecondSet: Set = [3, 4, 5, 6, 7]
var myThirdSet: Set = [6, 7, 8, 9, 10]

myFirstSet.union(mySecondSet)
myFirstSet.union(mySecondSet).union(myThirdSet)
//The union operation above combined the sets into one, while still prevent dupilcated items.

myFirstSet.intersect(mySecondSet)
mySecondSet.intersect(myThirdSet)
myFirstSet.intersect(myThirdSet).intersect(myFirstSet)
//The intersect operation above singles out the numbers that are in both sets and places them into a new set.

myFirstSet.subtract(mySecondSet)
myThirdSet.subtract(mySecondSet)
//The subtract operation above removes the numbers from the first set if it matches any numbers in the second set.

myFirstSet.exclusiveOr(myThirdSet)
myFirstSet.exclusiveOr(mySecondSet)
mySecondSet.exclusiveOr(myThirdSet)
//The exclusiveOr operation above singles out the numbers that are in both sets and removes them, placing all other numbers into one set.


myFirstSet.union(mySecondSet).intersect(myThirdSet).exclusiveOr(myFirstSet.subtract(mySecondSet))

//This was just me messing around :P
//The first set and second set combine with the union operation: [1, 2, 3, 4, 5, 6, 7]
//The commonalities with the new set and third set are singled out with the intersect operation: [6, 7]
//Before we perform the exclusiveOr, we have another subtract inside it.
//the first set's and second set's matching values are removed from the first set: [1, 2]
//Now the exclusiveOr removes all matching numbers and adds in all other numbers, and since none match, the result is [1, 2, 6, 7]


