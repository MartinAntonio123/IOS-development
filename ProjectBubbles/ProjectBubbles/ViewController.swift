//
//  ViewController.swift
//  ProjectBubbles
//
//  Created by Martin Vivanco on 5/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var settingsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func settingsButton(_ sender: Any) {
        performSegue(withIdentifier: "vinculo1", sender: self)
    }
    
}

