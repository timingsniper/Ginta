//
//  ViewController.swift
//  ginta
//
//  Created by 장준우 on 2017. 7. 20..
//  Copyright © 2017년 Joonwoo Percy Jang. All rights reserved.
//
//https://peterwitham.com/swift-archives/how-to-use-a-uipickerview-as-input-for-a-uitextfield/
//was used as source code for picker view

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    //Class Name Tetboxes (For keyboard hiding)
    @IBOutlet weak var namae1: UITextField!
    @IBOutlet weak var namae2: UITextField!
    @IBOutlet weak var namae3: UITextField!
    @IBOutlet weak var namae4: UITextField!
    @IBOutlet weak var namae5: UITextField!
    @IBOutlet weak var namae6: UITextField!
    @IBOutlet weak var namae7: UITextField!
    
    //Letter Grade Textboxes
    @IBOutlet weak var theTextfield: UITextField!
    @IBOutlet weak var tb2: UITextField!
    @IBOutlet weak var tb3: UITextField!
    @IBOutlet weak var tb4: UITextField!
    @IBOutlet weak var tb5: UITextField!
    @IBOutlet weak var tb6: UITextField!
    @IBOutlet weak var tb7: UITextField!
    
    //Class Level Textboxes
    @IBOutlet weak var lb1: UITextField!
    @IBOutlet weak var lb2: UITextField!
    @IBOutlet weak var lb3: UITextField!
    @IBOutlet weak var lb4: UITextField!
    @IBOutlet weak var lb5: UITextField!
    @IBOutlet weak var lb6: UITextField!
    @IBOutlet weak var lb7: UITextField!


    
    var selectedTextField: UITextField = UITextField()
    
    
    let myPickerData = [String](arrayLiteral: "Select Grade","A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F")
    
    let myLevelPickerData = [String](arrayLiteral: "Select Level", "Regular", "Honors", "AP")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Declaration of the picker view
        let thePicker = UIPickerView()
        let thePicker2 = UIPickerView()
        
        //Tag setting for two pickers
        thePicker.tag = 1
        thePicker2.tag = 2
        
        
        //Class Name self delegate assignments
        namae1.delegate = self
        namae2.delegate = self
        namae3.delegate = self
        namae4.delegate = self
        namae5.delegate = self
        namae6.delegate = self
        namae7.delegate = self
        
       
        //Letter Grade Self delegate assignments
        thePicker.delegate = self
        theTextfield.delegate = self
        tb2.delegate = self
        tb3.delegate = self
        tb4.delegate = self
        tb5.delegate = self
        tb6.delegate = self
        tb7.delegate = self
        
        //Class Level Self delegate assignments
        thePicker2.delegate = self
        lb1.delegate = self
        lb2.delegate = self
        lb3.delegate = self
        lb4.delegate = self
        lb5.delegate = self
        lb6.delegate = self
        lb7.delegate = self
        
        //Letter Grade Input-picker connection statements
        theTextfield.inputView = thePicker
        tb2.inputView = thePicker
        tb3.inputView = thePicker
        tb4.inputView = thePicker
        tb5.inputView = thePicker
        tb6.inputView = thePicker
        tb7.inputView = thePicker
        
        //Class Level Input-picker connection statements
        lb1.inputView = thePicker2
        lb2.inputView = thePicker2
        lb3.inputView = thePicker2
        lb4.inputView = thePicker2
        lb5.inputView = thePicker2
        lb6.inputView = thePicker2
        lb7.inputView = thePicker2
    
    }
    
    //Hide-keyboard functions
    func textFieldShouldReturn(_ namae1: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn2(_ namae2: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn3(_ namae3: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn4(_ namae4: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn5(_ namae5: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn6(_ namae6: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn7(_ namae7: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function to discriminate between selected textboxes
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.selectedTextField = textField
    }
    
    // MARK: UIPickerView Delegation
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // TODO: Replace with data count
        if pickerView.tag == 1{
            return myPickerData.count
        }
        else if pickerView.tag == 2{
            return myLevelPickerData.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // TODO: Replace with proper data
        if pickerView.tag == 1{
            return myPickerData[row]
        }
        else if pickerView.tag == 2{
            return myLevelPickerData[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        // Letter Grade Category Statements
        if self.selectedTextField == theTextfield {
            //Set text for theTextfield
            self.theTextfield.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb2 {
            //Set text for stateField
            self.tb2.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb3 {
            self.tb3.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb4 {
            self.tb4.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb5 {
            self.tb5.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb6 {
            self.tb6.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb7 {
            self.tb7.text = myPickerData[row]
        }
        
        //Class Level Category Statements
        else if self.selectedTextField == lb1 {
            self.lb1.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb2 {
            self.lb2.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb3 {
            self.lb3.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb4 {
            self.lb4.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb5 {
            self.lb5.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb6 {
            self.lb6.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb7 {
            self.lb7.text = myLevelPickerData[row]
        }
    

    }
    
  }

