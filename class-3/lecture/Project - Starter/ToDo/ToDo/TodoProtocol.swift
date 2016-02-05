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
    func removeObjAtIndx(indexPath: NSIndexPath)
    func removeAll()
    func getAll() -> [Object]
    func objectAtIndex(index: Int) -> Object?
    func sortBasedOnPriority (i1:Int, i2:Int) -> Bool
    func save()
    func count() -> Int
}

extension ToDoProto
{
    func add(object: Object)
    {
        self.items.append(object)
        save()
    }
    func remove(object: Object)
    {
        self.items = self.items.filter() { $0 !== object }
        save()
    }
    func removeObjAtIndx(indexPath: NSIndexPath)
    {
        self.items.removeAtIndex(indexPath.row)
        save()
    }
    func removeAll()
    {
        self.items.removeAll()
        save()
    }
    func getAll() -> [Object]
    {
        return self.items
    }
    func objectAtIndex(index: Int) -> Object?
    {
        return self.items[index]
    }
    func sortBasedOnPriority (i1:Int, i2:Int) -> Bool
    {
        return i1 > i2
    }
    func save()
    {
        NSKeyedArchiver.archiveRootObject(self.items, toFile: String.archivePath())
    }
    func count() -> Int
    {
        return self.items.count
    }
}