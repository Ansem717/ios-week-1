//
//  ToDoStorage.swift
//  ToDo
//
//  Created by Andy Malik on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDoStorage: ToDoProto
{
    typealias Object = Todo
    
    var items: [Object]
 
    static let shared = ToDoStorage()
    
    private init()
    {
        guard let data = NSData(contentsOfURL: NSURL.archiveURL()) else {
            self.items = [Object]()
            return
        }
        
        guard let storedItems = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Object] else {
            self.items = [Object]()
            return
        }
        
        self.items = storedItems
    }
}

//Something in this file broke my code. I didn't copy and paste, but I also don't understand this. I mimiced the code from
//the Student Roster we worked on in class together. (I did that for alot of this assignment, still a bunch of new things).