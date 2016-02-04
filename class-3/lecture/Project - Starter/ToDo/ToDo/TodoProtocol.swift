//
//  TodoProtocol.swift
//  ToDo
//
//  Created by Andy Malik on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ToDoProto: class
{
    typealias Object: Todo, NSCoding
    
    var items: [Object] {set get}
    
    func add(object: Object)
    func remove(object: Object)
    func removeAll()
    func getAll() -> [Object]
    func sortBasedOnPriority()
}

extension ToDoProto
{
    func add(object: Object)
    {
        self.items.append(object)
    }
    func remove(object: Object)
    {
        self.items = self.items.filter() { $0 !== object }
    }
    func removeAll()
    {
        self.items.removeAll()
    }
    func getAll() -> [Object]
    {
        return self.items
    }
    
    func sortBasedOnPriority (i1:Int, i2:Int) -> Bool
    {
        return i1 > i2
    }
}