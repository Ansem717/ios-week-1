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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: AnyObject) {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(__FUNCTION__)") }
        guard let description = self.todoTextField.text else { return }
        
        let item = Todo(title: "title", descript: description, dueDate: "2/4/16", priority: 0)
        ToDoStorage.shared.add(item)
        
        navigationController.popViewControllerAnimated(true)
    }
    
}
