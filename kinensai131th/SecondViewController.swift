//
//  SecondViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/05/24.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    typealias Datatype = [(label1: String,label2: String)]
    var TODO: Datatype = [("1年A組","SAO"),("1年B組","リゼロ"), ("1年C組",""),("1年D組",""),("1年E組",""),("1年F組",""),("1年G組",""),("1年H組",""),("1年I組",""),("1年J組",""),("1年K組","")]
    var TODO1: Datatype = [("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("",""),("","")]
    var TODO2: Datatype = [("1年A組",""),("1年B組",""),("1年C組",""),("1年D組",""),("1年E組",""),("1年F組",""),("1年G組",""),("1年H組",""),("1年I組",""),("1年J組","")]
    
    @IBOutlet weak var tableview1: UITableView!
    @IBOutlet weak var tableview2: UITableView!
    @IBOutlet weak var tableview3: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet var firstView: UIView!
    @IBOutlet var secondView: UIView!
    @IBOutlet var tirthview: UIView!
    @IBOutlet var fourthview: UIView!
    @IBOutlet var fivthview: UIView!
    @IBOutlet var sixthview: UIView!
    private var frag: Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(firstView)
        
    }
    
    @IBAction func segment(_ sender:Any){
        
        switch(sender as AnyObject).selectedSegmentIndex {
        case 0:
            frag = 0
            tableview1.reloadData()
            break
        case 1:
            frag = 1
            tableview2.reloadData()
            break
        default:
            print("エラー")
        }
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
            
        case 0:
            // Firstをタップされた時に実行される処理
            addFirstView()
        case 1:
            // Secondをタップされた時に実行される処理
            addSecondView()
        default:
            // デフォルトで実行される処理
            addFirstView()
        }
        
    }
    
    // SecondViewをViewから削除し、FirstViewをViewに追加する
    func addFirstView() {
        secondView.removeFromSuperview()
        self.view.addSubview(firstView)
    }
    
    // FirstViewをViewから削除し、SecondViewをViewに追加する
    func addSecondView() {
        firstView.removeFromSuperview()
        self.view.addSubview(secondView)
    }
    
    @IBAction func high1(){
        firstView.removeFromSuperview()
        self.view.addSubview(firstView)
        tirthview.removeFromSuperview()
        self.view.addSubview(firstView)
        fourthview.removeFromSuperview()
        self.view.addSubview(firstView)
    }
    
    @IBAction func high2(){
        tirthview.removeFromSuperview()
        self.view.addSubview(tirthview)
        firstView.removeFromSuperview()
        self.view.addSubview(tirthview)
        fourthview.removeFromSuperview()
        self.view.addSubview(tirthview)
    }
    
    @IBAction func high3(){
        fourthview.removeFromSuperview()
        self.view.addSubview(fourthview)
        firstView.removeFromSuperview()
        self.view.addSubview(fourthview)
        tirthview.removeFromSuperview()
        self.view.addSubview(fourthview)
    }
    
    @IBAction func ST1(){
        secondView.removeFromSuperview()
        self.view.addSubview(secondView)
        fivthview.removeFromSuperview()
        self.view.addSubview(secondView)
        sixthview.removeFromSuperview()
        self.view.addSubview(secondView)
    }
    
    @IBAction func ST2(){
        fivthview.removeFromSuperview()
        self.view.addSubview(fivthview)
        secondView.removeFromSuperview()
        self.view.addSubview(fivthview)
        sixthview.removeFromSuperview()
        self.view.addSubview(fivthview)
    }
    
    @IBAction func ST3(){
        sixthview.removeFromSuperview()
        self.view.addSubview(sixthview)
        secondView.removeFromSuperview()
        self.view.addSubview(sixthview)
        fivthview.removeFromSuperview()
        self.view.addSubview(sixthview)
    }
    
    
    //追加③ セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch frag {
        case 0:
            return TODO.count
            break
        case 1:
            return TODO2.count
            break
        default:
            break
        }
        return 0
    }
    
    //追加④ セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        switch frag {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! SampleCell1
//            // セルを取得する
//            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
//            //データをカンマで分割する。
//            let arr = TODO[indexPath.row].components(separatedBy: ",")
//            cell.textLabel?.text = arr[0] //タイトル
//            cell.detailTextLabel?.text = arr[1]
//            // セルに表示する値を設定する
//            cell.textLabel!.text = TODO[indexPath.row]
            cell.label1.text = TODO[indexPath.row].label1
            cell.label2.text = TODO[indexPath.row].label2
            
            return cell
            break
        case 1:
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SampleCell1
//            // セルを取得する
//            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
            // セルに表示する値を設定する
//            cell.textLabel!.text = TODO2[indexPath.row]
            cell.label1.text = TODO2[indexPath.row].label1
            cell.label2.text = TODO2[indexPath.row].label2
            return cell
            break
    
        default:
            break
        }
        return cell
    }
    



}

