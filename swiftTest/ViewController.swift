//
//  ViewController.swift
//  swiftTest
//
//  Created by YangTengJiao on 2018/12/10.
//  Copyright © 2018年 YangTengJiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let table:UITableView = UITableView(frame:UIScreen.main.bounds, style: UITableView.Style.plain)
    var dataArray = Array<String>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(table)
        table.delegate = self
        table.dataSource = self
        for i in 0...10 {
            dataArray.append("test index \(i)")
//            dataArray.adding("test index \(i)")
        }
        table.rowHeight = 50
        
        table.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        
        let title = dataArray[indexPath.row] //获取应用名
        cell.textLabel!.text = title
        
        //每一行有一个下载按钮
        let btn:UIButton = UIButton(type: UIButton.ButtonType.custom)
        btn.frame = CGRect.init(x: UIScreen.main.bounds.width-100, y: 10, width: 80, height: 50)
        btn.setTitle("跳转", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal)
        btn.backgroundColor = UIColor.red
        btn.tag = indexPath.row
//        btn.addTarget(self, action: #selector(btnClick(button:)), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(btnClick(button:)), for: UIControl.Event.touchUpInside)

        cell.contentView.addSubview(btn)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
//            let sb = UIStoryboard(name: "Main", bundle: nil);
//            let vc = sb.instantiateViewController(withIdentifier: "FirstViewController");
//            self.present(vc, animated: true, completion: nil)
            
            let secondVC = SecondViewController()
            secondVC.showSomeView()
            self.present(secondVC, animated: true, completion: nil)
            print("test")
            break;
        default:
            break;
        }
    }
    
    func btnClick() {
        print("sad")
    }
    
    @objc func btnClick(button : UIButton) {
        print("123123123123")
    }

}

