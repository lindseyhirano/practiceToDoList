//
//  CompleteToDoViewController.swift
//  practiceToDoList
//
//  Created by lindsey hirano on 7/13/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = ToDoTableTableViewController()
    var selectedToDo : ToDoCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
    
}

//Testing GitHub comment
