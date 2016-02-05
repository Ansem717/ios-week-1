//
//  ToDoClass.swift
//  ToDo
//
//  Created by Andy Malik on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Todo: NSObject, NSCoding
{
    let title: String
    let descript: String
    let dueDate: String
    var priority: Int?
    
    var id: String?
    
    init(title: String, descript: String, dueDate: String, priority: Int? = 0, id: String? = NSUUID().UUIDString)
    {
        self.title = title
        self.descript = descript
        self.dueDate = dueDate
        self.priority = priority
        self.id = id
    }
    
    convenience required init?(coder aDecoder: NSCoder)
    {
        guard let title = aDecoder.decodeObjectForKey("title") as? String else { fatalError("The title is not a string") }
        guard let descript = aDecoder.decodeObjectForKey("descript") as? String else { fatalError("The description is not a string") }
        guard let dueDate = aDecoder.decodeObjectForKey("dueDate") as? String else { fatalError("The dueDate is not a string") }
        guard let priority = aDecoder.decodeObjectForKey("priority") as? Int else { fatalError("The priority is not an integer?") }
        guard let id = aDecoder.decodeObjectForKey("id") as? String else { fatalError("Error occurs within the id...")}
        
        self.init(title: title, descript: descript, dueDate: dueDate, priority: priority, id: id)
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.title, forKey: "title")
        aCoder.encodeObject(self.descript, forKey: "descript")
        aCoder.encodeObject(self.dueDate, forKey: "dueDate")
        aCoder.encodeObject(self.priority, forKey: "priority")
        aCoder.encodeObject(self.id, forKey: "id")
    }
}
