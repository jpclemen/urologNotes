//
//  AddViewController.swift
//  urolog notes
//
//  Created by Joseph Clemente on 3/17/19.
//  Copyright © 2019 Joseph Clemente. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
 
    @IBOutlet weak var temp: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var water: UITextField!
    
    @IBOutlet weak var enter: UIButton!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: context)
        let newNote = NSManagedObject(entity: entity!, insertInto: context)
        newNote.setValue(temp.text, forKey: "temp")
        newNote.setValue(weight.text, forKey: "weight")
        newNote.setValue(water.text, forKey: "water")
        do{
            try context.save()
            print("success")
        }
        catch{
            print("failed")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
