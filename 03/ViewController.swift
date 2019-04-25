//
//  ViewController.swift
//  03
//
//  Created by dit08 on 2019. 4. 25..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pv: UIPickerView!
    
    var color = ["흰색", "초록색", "노란색"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pv.dataSource = self
        pv.delegate = self
        
        view.backgroundColor = UIColor.white
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if color[row] == "흰색" {
            view.backgroundColor = UIColor.white
        } else if color[row] == "초록색" {
            view.backgroundColor = UIColor.green
        } else {
            view.backgroundColor = UIColor.yellow
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }

}

