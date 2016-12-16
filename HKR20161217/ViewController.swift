//
//  ViewController.swift
//  HKR20161217
//
//  Created by ChoiJimin on 2016/12/16.
//  Copyright © 2016年 ChoiJimin. All rights reserved.
//

import UIKit

let sectionTitle = ["営業部/人事部","Illustrator","コミュニティー部","ゲーマー部","開発部"]
let section0 = [("Ulrara","CEO"),("Rikito","人事部長")]
let section1 = [("Dadara","Leader"),("nao","Designer"),("kineco","Illustrator")]
let section2 = [("Inocci","Leader"),("Ichi","Manager"),("Toshiaki","Communicator")]
let section3 = [("Tsukasa","Game Specialist"),("greedzz","CoD Pro"),("NAGON","HS Pro")]
let section4 = [("mandy","SE"),("Daiki","Game Derector"),("Jimmy","Engineer")]
let tableData = [section0, section1, section2, section3, section4]


class ViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // 테이블 뷰의 작성
        let myTableView:UITableView!
        myTableView = UITableView(frame:view.frame, style:.grouped)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        view.addSubview(myTableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = tableData[section]
        return sectionData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier:"cell")
        let sectionData = tableData[(indexPath as NSIndexPath).section]
        let cellData = sectionData[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = cellData.0
        cell.detailTextLabel?.text = cellData.1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let title = sectionTitle[indexPath.section]
        let sectionData = tableData[indexPath.section]
        let cellData = sectionData[indexPath.row]
        print("\(title)\(cellData.1)")
        print("\(cellData.0)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

