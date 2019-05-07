//
//  ViewControllerGame.swift
//  ProjectBubbles
//
//  Created by Martin Antonio Vivanco Palacios on 7/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewControllerGame: UIViewController {

    @IBOutlet weak var vewGaming: UIView!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    var time:Int = 60
    var score:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTime.text = "Time: \(time)"
        labelScore.text = "Score: \(score)"
        
        
        let bub: CustomButton = CustomButton(value: 0)
        self.view.addSubview(bub)
        // Do any additional setup after loading the view.
    }
    class CustomButton: UIButton {
        
        var myValue: Int
        
        required init(value: Int ) {
            // set myValue before super.init is called
            self.myValue = value
            
            super.init(frame: CGRect(x: 150, y: 100, width: 50, height: 50))
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-black"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
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
