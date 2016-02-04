//
//  NewItemViewController.swift
//  ToDo
//
//  Created by Michael Babiy on 1/13/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    @IBOutlet weak var todoTextField: UITextField!
    
    class func identifier() -> String {
        return "NewItemViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let newToDo = Todo(title: "Go to sleep!", descript: "Go to sleep at a reasonable time each night!", dueDate: "Due every night.")
        let twoToDo = Todo(title: "Clean Dishes", descript: "Clean your dishes tonight, asap", dueDate: "Feb 3 2016", priority: 5)
        print(ToDoStorage.shared) //Prints array after items are made, but none are added.
        ToDoStorage.shared.add(newToDo)
        print(ToDoStorage.shared) //Prints array after first item is added.
        ToDoStorage.shared.add(twoToDo)
        print(ToDoStorage.shared) //Prints array after 2nd item is added.
        //I didn't go more indepth on printing the functionality because I couldn't test if it worked due to the damn internal error.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: AnyObject) {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(__FUNCTION__)") }
        guard let description = self.todoTextField.text else { return }
        
        // Missing model.
        
        navigationController.popViewControllerAnimated(true)
    }
    
}
