//
//  FirstViewController.swift
//  swiftTest
//
//  Created by YangTengJiao on 2018/12/11.
//  Copyright © 2018年 YangTengJiao. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let backButton:UIButton = UIButton.init(type: UIButton.ButtonType.custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
