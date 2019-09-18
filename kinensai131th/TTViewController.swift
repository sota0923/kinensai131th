//
//  TTViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/05/24.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit

class TTViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var displayArray: [String] = []
    var displayArray1: [String] = []
    var displayArray2: [String] = []
    
    var highSchool1: [String] = ["light boys", "TKB", "KIT", "TKB", "TKB", "light boys", "TKB", "TKB", "TKB", "TKB", "TKB"]
    var highSchool2: [String] = ["light boys", "TKB", "KIT", "TKB", "TKB", "TKB", "TKB", "light boys", "TKB", "TKB", "TKB"]
    var highSchool3: [String] = ["9:00", "10::30", "11:00", "12:00", "13:00", "13:30", "14:00", "15:00", "15:30", "16:00",""]
    var highSchool4: [String] = ["10:20", "10::50", "11:50", "12:50", "13:20", "13:50", "14:50", "15:20", "15:50", "16:20",""]
    var highSchool5: [String] = ["9:00", "10::30", "11:00", "12:00", "13:00", "13:30", "14:00", "15:00", "15:30", "16:00",""]
    var highSchool6: [String] = ["10:20", "10::50", "11:50", "12:50", "13:20", "13:50", "14:50", "15:20", "15:50", "16:20",""]
    
    var juniorHighSchool1: [String] = ["light boys", "TKB", "KIT", "TKB", "TKB", "TKB", "TKB", "TKB", "TKB", "TKB", "TKB"]
    var juniorHighSchool2: [String] = ["light boys", "TKB", "KIT", "TKB", "TKB", "TKB", "TKB", "light boys", "TKB", "TKB", "TKB"]
    var juniorHighSchool3: [String] = ["9:00", "10::30", "11:00", "12:00", "13:00", "13:30", "14:00", "15:00", "15:30", "16:00",""]
    var juniorHighSchool4: [String] = ["10:20", "10::50", "11:50", "12:50", "13:20", "13:50", "14:50", "15:20", "15:50", "16:20",""]
    var juniorHighSchool5: [String] = ["9:00", "10::30", "11:00", "12:00", "13:00", "13:30", "14:00", "15:00", "15:30", "16:00",""]
    var juniorHighSchool6: [String] = ["10:20", "10::50", "11:50", "12:50", "13:20", "13:50", "14:50", "15:20", "15:50", "16:20",""]
    
    var index: Int = 0
    // 中学か高校かのフラグ
    var divisionFlag: Int = 0
    // 学年のフラグ
    var gradeFlag: Int = 0
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        
        // デフォで中一が表示される
        displayArray = juniorHighSchool1
        displayArray1 = juniorHighSchool3
        displayArray2 = juniorHighSchool5
    }
    
    @IBAction func first() {
        switch divisionFlag {
        case 0:
            displayArray = juniorHighSchool1
            displayArray1 = juniorHighSchool3
            displayArray2 = juniorHighSchool5
            
        case 1:
            displayArray = highSchool1
            displayArray1 = highSchool3
            displayArray2 = highSchool5
            
        default:
            break
        }
        gradeFlag = 1
        table.reloadData()
    }
    
    @IBAction func second() {
        switch divisionFlag {
        case 0:
            displayArray = juniorHighSchool2
            displayArray1 = juniorHighSchool4
            displayArray2 = juniorHighSchool6
            
        case 1:
            displayArray = highSchool2
            displayArray1 = highSchool4
            displayArray2 = highSchool6
            
            
        default:
            break
        }
        gradeFlag = 2
        table.reloadData()
    }
    
    
    
    @IBAction func segment(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            divisionFlag = 0
            gradeFlag = 1
            displayArray = juniorHighSchool1
            displayArray1 = juniorHighSchool3
            displayArray2 = juniorHighSchool5
        case 1:
            divisionFlag = 1
            gradeFlag = 2
            displayArray = highSchool1
            displayArray1 = highSchool3
            displayArray2 = highSchool5
        default:
            break
        }
        table.reloadData()
    }
    
    //-------------------------------------------------------------------------------テーブルビューの設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        let label1 = cell.contentView.viewWithTag(1) as! UILabel
        label1.text = displayArray[indexPath.row]
        
        let label2 = cell.contentView.viewWithTag(2) as! UILabel
        label2.text = displayArray1[indexPath.row]
        
        let label3 = cell.contentView.viewWithTag(3) as! UILabel
        label3.text = displayArray2[indexPath.row]
        
        return cell
    }
    //-------------------------------------------------------------------------------テーブルビューの設定
    
    // セルがタップされた時
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルの選択を解除
        tableView.deselectRow(at: indexPath, animated: true)
        // cellの番号を取得
        index = indexPath.row
        // 別の画面に遷移
        performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
    // 画面遷移する時，secondViewControllerへindexを渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            let secondVC = segue.destination as! detail1ViewController
            secondVC.index = self.index
            secondVC.divisionFlag = self.divisionFlag
            secondVC.gradeFlag = self.gradeFlag
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
