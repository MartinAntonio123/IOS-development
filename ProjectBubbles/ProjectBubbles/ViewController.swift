//
//  ViewController.swift
//  ProjectBubbles
//
//  Created by Martin Vivanco on 5/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbName: UITextField!
    var time: Int = 30
    var noBubbles: Int = 15
    @IBAction func changeToSettings(_ sender: Any) {
        performSegue( withIdentifier: "Cambio1", sender: self)
    }
    @IBAction func changeToScore(_ sender: Any) {
        performSegue( withIdentifier: "Cambio2", sender: self)
    }
    @IBAction func changeToPlay(_ sender: Any) {
        performSegue( withIdentifier: "Cambio3", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewControllerSett
        {
            let vc = segue.destination as? ViewControllerSett
            vc?.time = time
            vc?.noBubbules = noBubbles
            vc?.viewMainView = self
        }
        if segue.destination is ViewControllerGame
        {
            let vc = segue.destination as? ViewControllerGame
            vc?.time = time
            vc?.noBubbles = noBubbles
            vc?.unameme = tbName.text!
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("time \(time) no \(noBubbles)")
        // Do any additional setup after loading the view, typically from a nib.
    }
}


