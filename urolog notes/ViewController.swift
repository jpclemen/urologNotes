//
//  ViewController.swift
//  urolog notes
//
//  Created by Joseph Clemente on 3/16/19.
//  Copyright © 2019 Joseph Clemente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.isHidden = false;
        if let selectServicesController = self.storyboard?.instantiateViewController(withIdentifier: "SelectServicesController") as? UITableViewController {
            let navigationController = UINavigationController(rootViewController: selectServicesController)
            self.navigationController?.present(navigationController, animated: true, completion: nil)
        }
    }


}

