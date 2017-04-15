//
//  ViewController.swift
//  appCalculatorBac
//
//  Created by Cntt20 on 4/15/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //
    var numberScreen:Double = 0
    var previousnumber:Double = 0
    var performingMath = false
    var more = false
    var afterequal = false
    var operation = 0
    var positive = true
    //
    
    @IBOutlet weak var lb_display: UILabel!
    //Xoa So 0 Cua Kieu Double
    func forTailingZero(temp: Double) -> String{
        let tempVar = String(format: "%g", temp)
        return tempVar
    }
    
    //Nhap Cac Chu So
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            previousnumber = Double(lb_display.text!)!
            lb_display.text = String(sender.tag - 1)
            performingMath = false
            more = true
        }
        else {
            lb_display.text = lb_display.text! + String(sender.tag - 1)
            numberScreen = Double(lb_display.text!)!
        }
    }
    
    //Nhap Dau Cham (.)
    @IBAction func Dos(_ sender: UIButton) {
        var textresult:String = ""
        textresult = lb_display.text!
        let countDos = textresult.characters.filter { $0 == "." }.count
        if afterequal == true || lb_display.text == "" {
            lb_display.text = "0."
        }
        else if lb_display.text != "" && countDos == 0 {
            lb_display.text = lb_display.text! + "."
        }
    }
    
    //Nhap Dau Cong Dau Tru Cho 1 So
    @IBAction func PositiveNegative(_ sender: UIButton) {
        var textresult:String = ""
        textresult = lb_display.text!
        if textresult[textresult.startIndex] == "-"{
            var name: String = ""
            name = lb_display.text!
            name.remove(at: name.startIndex)
            lb_display.text = name
        }
        else {
            lb_display.text = "-" + lb_display.text!
        }
    }
    
    //Tinh Phan Tram
    @IBAction func Percent(_ sender: UIButton) {
        var ipercent:Double = 0;
        ipercent = Double(lb_display.text!)!
        ipercent = ipercent/100
        lb_display.text = String(forTailingZero(temp: ipercent))
    }
    
    //Tinh Toan
    @IBAction func calculate(_ sender: UIButton) {
        if sender.tag != 11 && sender.tag != 16 && lb_display.text != "" {
            if sender.tag == 12 && more == true{ //Chia
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber+numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                
                //
            }
            else if sender.tag == 13 && more == true { //Nhan
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber+numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                
                //
            }
            else if sender.tag == 14 && more == true { //Tru
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber+numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                //
            }
            else if sender.tag == 15 && more == true { //Cong
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forTailingZero(temp: previousnumber+numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                //
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 11 {
            lb_display.text = ""
            previousnumber = 0
            numberScreen = 0
            operation = 0
        }
        else if sender.tag == 16 {
            if operation == 12 && performingMath == false{ //Chia
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forTailingZero(temp: previousnumber/numberScreen))
                previousnumber = previousnumber/numberScreen
                afterequal = true
            }
            else if operation == 13 && performingMath == false{ //Nhan
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forTailingZero(temp: previousnumber*numberScreen))
                previousnumber = previousnumber*numberScreen
                afterequal = true
                
            }
            else if operation == 14 && performingMath == false{ //Tru
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forTailingZero(temp: previousnumber-numberScreen))
                previousnumber = previousnumber-numberScreen
                afterequal = true
                
            }
            else if operation == 15 && performingMath == false{ //Cong
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forTailingZero(temp: previousnumber+numberScreen))
                previousnumber = previousnumber+numberScreen
                afterequal = true
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

