//
//  ViewController.swift
//  ProjectBubbles
//
//  Created by Martin Vivanco on 5/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeToSettings(_ sender: Any) {
        performSegue( withIdentifier: "Cambio1", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

