//
//  SecondViewController.swift
//  swiftTest
//
//  Created by YangTengJiao on 2018/12/11.
//  Copyright © 2018年 YangTengJiao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        let backButton = UIButton.init(type: UIButton.ButtonType.custom)
        backButton.frame = CGRect.init(x: 10, y: 20, width: 100, height: 100)
        backButton.backgroundColor = UIColor.green
        self.view.addSubview(backButton)
        backButton.setTitle("121", for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(backButton(button:)), for: UIControl.Event.touchUpInside)
        

        // Do any additional setup after loading the view.
    }
    
    @objc func backButton(button :UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    func showSomeView() {
        print("showsomeview")
    }

}
