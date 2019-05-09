//
//  ViewControllerSett.swift
//  ProjectBubbles
//
//  Created by Martin Vivanco on 6/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewControllerSett: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var BubblesLabel: UILabel!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var bubbleSlider: UISlider!
    var time: Int = 0
    var noBubbules: Int = 0
    var viewMainView: ViewController?
    @IBAction func funBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tiempo = \(time) bubles = \(noBubbules)")
        TimeLabel.text = "Time: \(time)"
        timeSlider.value = float_t(time)
        BubblesLabel.text = "No. of bubbles: \(noBubbules)"
        bubbleSlider.value = float_t(noBubbules)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func timeSliderMove(_ sender: Any) {
        TimeLabel.text = "Time: \(Int(timeSlider.value))"
        viewMainView?.time = time
    }
    @IBAction func bubbleSliderMove(_ sender: Any) {
        BubblesLabel.text = "No. of bubbles: \(Int(bubbleSlider.value))"
        viewMainView?.noBubbles = noBubbules
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
