//
//  ViewController.swift
//  PersonalTrainer
//
//  Created by student on 12/4/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentListIndex: Int = 0
    
    @IBOutlet var PartLabel: UILabel!
    @IBOutlet var Buttonshape: UIButton!
    @IBOutlet var Buttonshape2: UIButton!

    let list: [String] = ["Shoulder", "Chest", "Back", "Leg"]
    @IBAction func right(sender: AnyObject){
        currentListIndex += 1
        if currentListIndex == list.count {
            currentListIndex = 0
        }
        let todaypart: String = list[currentListIndex]
        PartLabel.text = todaypart
    }
    
    @IBAction func left(sender: AnyObject){
        currentListIndex -= 1
        if currentListIndex == -1{
            currentListIndex = (list.count - 1)
        }
        let todaypart = list[currentListIndex]
        PartLabel.text = todaypart
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Buttonshape.layer.borderColor = UIColor.white.cgColor
        self.Buttonshape.layer.borderWidth = 2
        self.Buttonshape.layer.cornerRadius = 10
        self.Buttonshape2.layer.borderColor = UIColor.white.cgColor
        self.Buttonshape2.layer.borderWidth = 2
        self.Buttonshape2.layer.cornerRadius = 10
        PartLabel.text = list[currentListIndex]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Check Part"{
            let sh = segue.destination as! DetailOfPart
            sh.part = PartLabel.text!
        }
    }
    
}

