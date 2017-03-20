//
//  ViewController.swift
//  calculator
//
//  Created by s20151104708 on 17/3/8.
//  Copyright © 2017年 s20151104708. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var flag:String = "0"
    var s:String = ""
    var y:String = ""
    var second:Bool = false
    @IBOutlet weak var x: UITextField!
   
    @IBAction func one(_ sender: UIButton) {
        x.text = x.text! + "1"
    }

    @IBAction func two(_ sender: UIButton) {
        x.text = x.text! + "2"
    }
    @IBAction func three(_ sender: UIButton) {
        x.text = x.text! + "3"
    }
    @IBAction func four(_ sender: UIButton) {
        x.text = x.text! + "4"
    }
    @IBAction func five(_ sender: UIButton) {
        x.text = x.text! + "5"
    }
    @IBAction func six(_ sender: UIButton) {
        x.text = x.text! + "6"
    }
    @IBAction func seven(_ sender: UIButton) {
        x.text = x.text! + "7"
    }
    @IBAction func eight(_ sender: UIButton) {
        x.text = x.text! + "8"
    }
    @IBAction func nine(_ sender: UIButton) {
        x.text = x.text! + "9"
    }
    @IBAction func zero(_ sender: UIButton) {
        x.text = x.text! + "0"
    }
    @IBAction func point(_ sender: UIButton) {
        x.text = x.text! + "."
        
    }
    @IBAction func add(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = "+"
       
    }
    @IBAction func subtract(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = "-"
    }
    @IBAction func multiply(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = "*"
    }
    @IBAction func divide(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = "/"
         y = x.text!
    }
    @IBAction func value(_ sender: Any) {
   
        switch flag {
        case "+":
            var temp:Double
            temp = Double(s)! + Double(x.text!)!
            x.text="\(temp)"
            
        case "-":
            var temp: Double
            temp = Double(s)! - Double(x.text!)!
            x.text = "\(temp)"
            
        case "*":
            var temp: Double
            temp = Double(s)! * Double(x.text!)!
            x.text = "\(temp)"
            
        case "/":
            var temp: Double
            temp = Double(s)! / Double(x.text!)!
            x.text = "\(temp)"
        default:
            x.text = x.text
        }
    }

    @IBAction func del(_ sender: Any) {
          x.text = ""
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

