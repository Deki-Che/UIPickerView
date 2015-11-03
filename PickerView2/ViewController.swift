//
//  ViewController.swift
//  PickerView2
//
//  Created by Deki on 15/11/3.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{

    var province = ["黑龙江", "辽宁", "北京", "山东"]
    var city = ["黑龙江":["哈尔滨", "佳木斯", "大庆", "加格达奇"], "辽宁":["沈阳", "鞍山", "大连"], "北京":["海淀区", "大兴区", "朝阳区"], "山东":["青岛", "烟台", "枣庄"]]
    @IBOutlet weak var pickerView: UIPickerView!
    var selectedValue = "黑龙江"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.reloadComponent(1)
    }
    
    //  lie shu 列数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    // hang shu 行数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return province.count
        } else {
            if city[selectedValue] != nil {
                return city[selectedValue]!.count
            }else {
                return 0
            }
        }
    }
    
    // 标题
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return province[row]
        } else {
            if city[selectedValue] != nil {
                return city[selectedValue]![row]
            }else {
                return "?"
            }
        }
    }
    
    
    // 点击出发事件
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            selectedValue = province[row]
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
        }
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

