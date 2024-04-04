//
//  OldViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 28/03/24.
//

import UIKit

class AgeViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var picker: UIPickerView!
   
  
}

extension AgeViewController: UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }

       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return 100
       }

       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return String(row + 1)
       }

       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           print("Selected value: \(row + 1)")
       }
}
