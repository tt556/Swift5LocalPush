//
//  ViewController.swift
//  Swift5LocalPush
//
//  Created by 神崎泰旗 on 2018/11/10.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()





    }

    @IBAction func push(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = nameTextField.text!
        content.body = textField.text!
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "ID", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request,withCompletionHandler: nil)
        
    }
    
}

