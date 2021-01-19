//
//  MakeMyRoutine.swift
//  PersonalTrainer
//
//  Created by student on 12/6/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class MakeMyRoutine: UITableViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet var selectworkout: UIPickerView!
    var Database = WorkoutDatabase()
    var index = 0
    var allItems = [String]()
    var list: [String] = [String]()
    
    @IBAction func WorkoutPicker(_ sender: Any){
        if(index < Database.Shouldername.count){
            allItems.append(Database.Shouldername[index])
            Database.MyRoutinename.append(Database.Shouldername[index])
            Database.MyRoutineimg.append(Database.Shoulderimg[index])
            Database.MyRoutinedesc.append(Database.Shoulderdesc[index])
        }
        else if(Database.Shouldername.count <= index && Database.Shouldername.count + Database.Chestname.count > index){
            allItems.append(Database.Chestname[index - Database.Shouldername.count])
            Database.MyRoutinename.append(Database.Chestname[index - Database.Shouldername.count])
            Database.MyRoutineimg.append(Database.Chestimg[index - Database.Shouldername.count])
            Database.MyRoutinedesc.append(Database.Chestdesc[index - Database.Shouldername.count])
        }
        else if(Database.Shouldername.count + Database.Chestname.count <= index && Database.Shouldername.count + Database.Chestname.count + Database.Backname.count > index){
            allItems.append(Database.Backname[index - Database.Shouldername.count - Database.Chestname.count])
            Database.MyRoutinename.append(Database.Backname[index - Database.Shouldername.count - Database.Chestname.count])
            Database.MyRoutineimg.append(Database.Backimg[index - Database.Shouldername.count - Database.Chestname.count])
            Database.MyRoutinedesc.append(Database.Backdesc[index - Database.Shouldername.count - Database.Chestname.count])
        }
        else if(Database.Shouldername.count + Database.Chestname.count + Database.Backname.count <= index){
            allItems.append(Database.Legname[index - Database.Shouldername.count - Database.Chestname.count - Database.Backname.count])
            Database.MyRoutinename.append(Database.Legname[index - Database.Shouldername.count - Database.Chestname.count - Database.Backname.count])
            Database.MyRoutineimg.append(Database.Legimg[index - Database.Shouldername.count - Database.Chestname.count - Database.Backname.count])
            Database.MyRoutinedesc.append(Database.Legdesc[index - Database.Shouldername.count - Database.Chestname.count - Database.Backname.count])
        }
        
        let indexPath = IndexPath(row: allItems.count-1, section:0)
        
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.selectworkout.delegate = self
        self.selectworkout.dataSource = self
        
        list = Database.Shouldername + Database.Chestname + Database.Backname + Database.Legname
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = allItems[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        index = row
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Make Routine"{
            let sh = segue.destination as! DetailOfPart
            sh.part = "My Routine"
            sh.Database = Database
        }
    }
    
}
