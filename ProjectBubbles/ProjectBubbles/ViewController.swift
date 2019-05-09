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
    @IBOutlet weak var bubLabel: UILabel!
    @IBOutlet weak var sliderTime: UISlider!
    @IBOutlet weak var sliderBub: UISlider!
    @IBOutlet weak var timeLabel: UILabel!
    var time: Int = 60
    var noBubbles: Int = 15
    var name = UserDefaults.standard.string(forKey: "name")
    var score = UserDefaults.standard.integer(forKey: "score")
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
        }
        if segue.destination is ViewControllerGame
        {
            let vc = segue.destination as? ViewControllerGame
            vc?.time = time
            vc?.noBubbles = noBubbles
            vc?.unameme = tbName.text!
        }
    }
    @IBAction func sliderTimeMove(_ sender: Any) {
        timeLabel.text = "Time: \(Int(sliderTime.value))"
        time = Int(sliderTime.value)
    }
    @IBAction func sliderBubMove(_ sender: Any) {
        bubLabel.text = "No. of bubbles: \(Int(sliderBub.value))"
        noBubbles = Int(sliderBub.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("time \(time) no \(noBubbles)")
        if name == nil{
            UserDefaults.standard.set(0, forKey: "score")
            UserDefaults.standard.set("name", forKey: "name")
            name = UserDefaults.standard.string(forKey: "name")
            score = UserDefaults.standard.integer(forKey: "score")
            print(name)
            print(score)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
}


