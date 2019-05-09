//
//  ViewControllerGame.swift
//  ProjectBubbles
//
//  Created by Martin Antonio Vivanco Palacios on 7/5/19.
//  Copyright © 2019 Martin Vivanco. All rights reserved.
//

import UIKit

class ViewControllerGame: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var vewGaming: UIView!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var buttonStart: UIButton!
    var time:Int = 60
    var score:Int = 0
    var noBubbles: Int = 15
    var unameme: String = ""
    var bubbles: [CustomButton] = []
    var timer = Timer()
    
    @objc func update()
    {
        time = time - 1
        labelTime.text = "Time: \(time)"
        delateBubbles()
        generateBubbles()
        if time <= 0
        {
            delateBubbles()
            timer.invalidate()
            buttonBack.isHidden = false
            timeLabel.isHidden = false
        }
    }
    func runTimer()
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(update)), userInfo: nil, repeats: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTime.text = "Time: \(time)"
        labelScore.text = "Score: \(score)"
        print("Vista Cargada \(noBubbles)")
        generateBubbles()
        runTimer()
        buttonBack.isHidden = true
        timeLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func funcBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func buttonAction(sender: CustomButton!) {
        print("Button tapped")
        score = score + sender.myValue
        labelScore.text = "Score: \(score)"
        sender.removeFromSuperview()
    }
    class CustomButton: UIButton {
        var myValue: Int
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int ) {
            // set myValue before super.init is called
            self.myValue = value
            super.init(frame: CGRect(x: x, y: y, width: w, height: h))
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            //self.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }/*
        @objc func buttonAction(sender: UIButton!) {
            print("Button tapped")
            updateScore(mas: self.myValue)
        }*/
    }
    class BubbleBlack: CustomButton {

        init(x: Int, y: Int ) {
            // set myValue before super.init is called
            super.init(value:10, x:x, y:y, w:30, h:30)
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-black"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int) {
            fatalError("init(value:x:y:w:h:) has not been implemented")
        }
        
    }
    class BubbleBlue: CustomButton {
        
        init(x: Int, y: Int ) {
            // set myValue before super.init is called
            super.init(value:8, x:x, y:y, w:40, h:40)
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-blue"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int) {
            fatalError("init(value:x:y:w:h:) has not been implemented")
        }
        
    }
    class BubbleGreen: CustomButton {
        
        init(x: Int, y: Int ) {
            // set myValue before super.init is called
            super.init(value:5, x:x, y:y, w:50, h:50)
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-green"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int) {
            fatalError("init(value:x:y:w:h:) has not been implemented")
        }
        
    }
    class BubblePink: CustomButton {
        
        init(x: Int, y: Int ) {
            // set myValue before super.init is called
            super.init(value:2, x:x, y:y, w:60, h:60)
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-pink"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int) {
            fatalError("init(value:x:y:w:h:) has not been implemented")
        }
        
    }
    class BubbleRed: CustomButton {
        
        init(x: Int, y: Int ) {
            // set myValue before super.init is called
            super.init(value:1, x:x, y:y, w:70, h:70)
            //super.init()
            // set other operations after super.init, if required
            backgroundColor = .white
            self.setImage(UIImage(named: "bubble-red"), for: .normal)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        required init(value: Int, x: Int, y: Int, w: Int, h: Int) {
            fatalError("init(value:x:y:w:h:) has not been implemented")
        }
        
    }
    func generateBubbles(){
        //var bubbles: [CustomButton] = []
        var i = 0
        while i < noBubbles {
            let number = Int.random(in: 0 ... 100)
            if number <= 40{
                bubbles.append(BubbleRed(x:Int.random(in: 0 ... 305), y:Int.random(in: 0 ... 628)))
            }
            else if number <= 70{
                bubbles.append(BubblePink(x:Int.random(in: 0 ... 305), y:Int.random(in: 0 ... 628)))
            }
            else if number <= 85{
                bubbles.append(BubbleGreen(x:Int.random(in: 0 ... 305), y:Int.random(in: 0 ... 628)))
            }
            else if number <= 95{
                bubbles.append(BubbleBlue(x:Int.random(in: 0 ... 305), y:Int.random(in: 0 ... 628)))
            }
            else if number <= 100{
                bubbles.append(BubbleBlack(x:Int.random(in: 0 ... 305), y:Int.random(in: 0 ... 628)))
            }
            bubbles[i].addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            self.vewGaming.addSubview(bubbles[i])
            i = i + 1
        }
        // 375 x 698
    }
    func delateBubbles(){
        var i = 0
        //self.vewGaming.remove
        while i < noBubbles {
            bubbles[i].removeFromSuperview()
            i = i + 1
        }
        bubbles.removeAll()
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
