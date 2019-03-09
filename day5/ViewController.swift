//
//  ViewController.swift
//  day5
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var lblstate: UILabel!
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    @IBOutlet weak var lblcountry: UILabel!
    
    var country = [String]()
     var state = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerCountry.delegate = self
        self.pickerCountry.dataSource = self
        
        
        country.append("India")
        country.append("Canada")
        country.append("China")
        country.append("USA")
        country.append("Spain")
        country.append("Mexico")
        country.append("New Zealand")
        country.append("Australia")
        country.append("Germany")
        country.append("France")
        
       
        
        state.append("1")
        state.append("2")
        state.append("3")
        state.append("4")
        state.append("5")
        state.append("6")
        state.append("7")
        state.append("8")
        state.append("9")
        state.append("10")
        
        
    }


    
    @IBAction func birthdatePicker(_ sender: UIDatePicker)
    {
        
        print(sender.date)
        
    }

    
    
    
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
}

    
func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    
    
    if (component==0)
    {
          return  self.state.count
    }
    
    else
    {
         return  self.country.count    }

 
    
}

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       // return "Comp: \(component) - Row: \(row)"
    
    if (component==0)
    {
        return self.state[row]
        }
    else{
    return self.country[row]
        }
    
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
       /* if (component==0)
        {
            self.lblstate.text = self.state[row]
            self.lblstate.text = self.country[row]
        }
        else{
             self.lblcountry.text = self.country[row]
        }
        
        */
        
        
       
        self.lblcountry.text = "Country: \(self.state[self.pickerCountry.selectedRow(inComponent: 0)]), State: \(self.country[self.pickerCountry.selectedRow(inComponent: 1)]))"
        
   
       
    }
    
    
}
