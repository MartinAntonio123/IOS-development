//
//  ViewControllerScore.swift
//  ProjectBubbles
//
//  Created by Martin Antonio Vivanco Palacios on 7/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewControllerScore: UIViewController {

    @IBOutlet weak var highScore: UILabel!
    @IBAction func returnHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = UserDefaults.standard.string(forKey: "name")
        let score = UserDefaults.standard.integer(forKey: "score")
        highScore.text = name!+": \(score)"
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
