//
//  DetailOfPart.swift
//  PersonalTrainer
//
//  Created by student on 12/6/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
class DetailOfPart: UIViewController{
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var partlabel: UILabel!
    @IBOutlet var imgViewer: UIImageView!
    @IBOutlet var descriptionlabel: UITextView!
    @IBOutlet var Buttonshape: UIButton!
    
    var Database = WorkoutDatabase()
    var currentListIndex = 0
    var part = ""
    
    @IBAction func right(sender: AnyObject){
        currentListIndex += 1
        
        if(part == "Shoulder"){
            if currentListIndex == Database.Shouldername.count {
                currentListIndex = 0
            }
            partlabel.text = Database.Shouldername[currentListIndex]
            imgViewer.image = UIImage(named: Database.Shoulderimg[currentListIndex])
            descriptionlabel.text = Database.Shoulderdesc[currentListIndex]
        }
        else if(part == "Chest"){
            if currentListIndex == Database.Chestname.count {
                currentListIndex = 0
            }
            partlabel.text = Database.Chestname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Chestimg[currentListIndex])
            descriptionlabel.text = Database.Chestdesc[currentListIndex]
        }
        else if(part == "Back"){
            if currentListIndex == Database.Backname.count {
                currentListIndex = 0
            }
            partlabel.text = Database.Backname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Backimg[currentListIndex])
            descriptionlabel.text = Database.Backdesc[currentListIndex]
        }
        else if(part == "Leg"){
            if currentListIndex == Database.Legname.count {
                currentListIndex = 0
            }
            partlabel.text = Database.Legname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Legimg[currentListIndex])
            descriptionlabel.text = Database.Legdesc[currentListIndex]
        }
        else if(part == "My Routine"){
            if currentListIndex == Database.MyRoutinename.count {
                currentListIndex = 0
            }
            partlabel.text = Database.MyRoutinename[currentListIndex]
            imgViewer.image = UIImage(named: Database.MyRoutineimg[currentListIndex])
            descriptionlabel.text = Database.MyRoutinedesc[currentListIndex]
        }
    }
    
    @IBAction func left(sender: AnyObject){
        currentListIndex -= 1
        if(part == "Shoulder"){
            if currentListIndex == -1{
                currentListIndex = (Database.Shouldername.count - 1)
            }
            partlabel.text = Database.Shouldername[currentListIndex]
            imgViewer.image = UIImage(named: Database.Shoulderimg[currentListIndex])
            descriptionlabel.text = Database.Shoulderdesc[currentListIndex]
        }
        else if(part == "Chest"){
            if currentListIndex == -1{
                currentListIndex = (Database.Chestname.count - 1)
            }
            partlabel.text = Database.Chestname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Chestimg[currentListIndex])
            descriptionlabel.text = Database.Chestdesc[currentListIndex]
        }
        else if(part == "Back"){
            if currentListIndex == -1{
                currentListIndex = (Database.Backname.count - 1)
            }
            partlabel.text = Database.Backname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Backimg[currentListIndex])
            descriptionlabel.text = Database.Backdesc[currentListIndex]
        }
        else if(part == "Leg"){
            if currentListIndex == -1{
                currentListIndex = (Database.Legname.count - 1)
            }
            partlabel.text = Database.Legname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Legimg[currentListIndex])
            descriptionlabel.text = Database.Legdesc[currentListIndex]
        }
        else if(part == "My Routine"){
            if currentListIndex == -1{
                currentListIndex = (Database.MyRoutinename.count - 1)
            }
            partlabel.text = Database.MyRoutinename[currentListIndex]
            imgViewer.image = UIImage(named: Database.MyRoutineimg[currentListIndex])
            descriptionlabel.text = Database.MyRoutinedesc[currentListIndex]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namelabel.text = part
        self.Buttonshape.layer.borderColor = UIColor.white.cgColor
        self.Buttonshape.layer.borderWidth = 2
        self.Buttonshape.layer.cornerRadius = 10

        if(part == "Shoulder"){
            partlabel.text = Database.Shouldername[currentListIndex]
            imgViewer.image = UIImage(named: Database.Shoulderimg[currentListIndex])
            descriptionlabel.text = Database.Shoulderdesc[currentListIndex]
        }
        else if(part == "Chest"){
            partlabel.text = Database.Chestname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Chestimg[currentListIndex])
            descriptionlabel.text = Database.Chestdesc[currentListIndex]
        }
        else if(part == "Back"){
            partlabel.text = Database.Backname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Backimg[currentListIndex])
            descriptionlabel.text = Database.Backdesc[currentListIndex]
        }
        else if(part == "Leg"){
            partlabel.text = Database.Legname[currentListIndex]
            imgViewer.image = UIImage(named: Database.Legimg[currentListIndex])
            descriptionlabel.text = Database.Legdesc[currentListIndex]
        }
        else if(part == "My Routine"){
            partlabel.text = Database.MyRoutinename[currentListIndex]
            imgViewer.image = UIImage(named: Database.MyRoutineimg[currentListIndex])
            descriptionlabel.text = Database.MyRoutinedesc[currentListIndex]
        }
    }
}
