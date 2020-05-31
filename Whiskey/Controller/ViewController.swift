//
//  ViewController.swift
//  Whiskey
//
//  Created by Didier Delhaisse on 31/05/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var whiskeyLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        setTitle()
    }
    
    func setTitle() {
        whiskeyLabel.text = "Make a selection!"
    }
}

// MARK: - Extension
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Beverage.whiskeyTitle.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0..<Beverage.whiskeyTitle.count:
            return Beverage.whiskeyTitle[row]
        default:
            return "Error"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row != 0 {
            // the whiskeyTitle array has one more item then enum cases.
            // To account for that, you take the [row - 1] to get the correct enum case rawValue if row != 0.
            whiskeyLabel.text = Beverage.Whiskey.allCases[row - 1].rawValue
        } else {
            setTitle()
        }
    }
}



