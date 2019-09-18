//
//  SecondViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/05/24.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var displayArray: [String] = []
    var displayArray1: [String] = []
    
    var highSchool1: [String] = ["坂本龍馬暗殺事件～明治前夜の悲劇を追え～", "Back to the令和～昭和から令和～", "All Night～静かなるゲーマーたち～", "近未来の娯楽への誘い", "新!!桶狭間の戦い&ホームズの冒険", "内職先生～それいけナイショクマン～", "天下統一！～君は歴史を塗りかえられるか～", "KINGまでの道　試練だYO☆", "進撃の大仏　～君は○○から逃れられるか～", "",""]
    var highSchool2: [String] = ["ドキッ！男だらけのラブコメ&ファンタジー", "スマホを使っただけなのに～面談室編～", "タピオカ道中芋栗毛", "そうだUSJ行こう～破られたDの掟～", "本当に本当のロミオとジュリエット", "Escape from 鬼教官", "～東海イロモネア～トミジョ―を笑わせろ！", "TRPG～あなたが創る物語～",  "タピオカスプラッシュ～タピオ化した世界～", "",""]
    var highSchool3: [String] = ["中学2年A組", "中学2年B組", "中学2年C組", "中学2年D組", "中学2年E組", "中学2年F組", "中学2年G組", "中学2年H組", "中学2年I組", "",""]
    var highSchool4: [String] = ["中学3年A組", "中学3年B組", "中学3年C組", "中学3年D組", "中学3年E組", "中学3年F組", "中学3年G組", "中学3年H組",  "中学3年I組", "",""]

    var juniorHighSchool1: [String] = ["東海版ドラえもん　のび太と人工知能新世界", "Hero in Black～忍びの世界～", "ネチラタ事件", "映画「ミッション・インオキュペーション」", "アカテンジャーズ～３月の成績表～", "PREVENTION", "職員室戦争", "美女と美女と美女と美女と野獣", "君のダは。", "Real Figure","アナと雪の女王２＆美女と野獣"]
    var juniorHighSchool2: [String] =  ["B群東海生下剋上物語", "青鬼～ver.2B　呪われた廃校～", "高校2年C組", "タピオカゾンビの恐怖", "翔んで愛知～愛知ナンバーワンは俺達だ～", "愛のタッグマッチ", "The Unknown World-2G", "世界から数学が消えたなら", "The Greatest Show", "Alice in Wonderland♡","アナベル　死霊館の人形"]
    var juniorHighSchool3: [String] = ["高校1年A組", "高校1年B組", "高校1年C組", "高校1年D組", "高校1年E組", "高校1年F組", "高校1年G組", "高校1年H組", "高校1年I組", "高校1年J組","高校1年K組"]
    var juniorHighSchool4: [String] = ["高校2年A組", "高校2年B組", "高校2年C組", "高校2年D組", "高校2年E組", "高校2年F組", "高校2年G組", "高校2年H組", "高校2年I組", "高校2年J組","高校1年K組"]
    
     var index: Int = 0
    // 中学か高校かのフラグ
    var divisionFlag: Int = 0
    // 学年のフラグ
    var gradeFlag: Int = 0
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var button1: Button_Cocyom!
    @IBOutlet weak var button2: Button_Cocyom!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.delegate = self
        table.dataSource = self
        
        // デフォで中一が表示される
        displayArray = juniorHighSchool1
        displayArray1 = juniorHighSchool3
        divisionFlag = 0
        gradeFlag = 1
    }
    
    @IBAction func first() {
        switch divisionFlag {
        case 0:
            displayArray = juniorHighSchool1
            displayArray1 = juniorHighSchool3
            button1.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor.white, for: .normal)
            button2.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
        case 1:
            displayArray = highSchool1
            displayArray1 = highSchool3
            button1.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0), for: .normal)
            button2.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
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
            button1.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
            button2.setTitleColor(UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0), for: .normal)
        case 1:
            displayArray = highSchool2
            displayArray1 = highSchool4
            button1.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
            button2.setTitleColor(UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0), for: .normal)
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
            button1.setTitle("1年生", for: .normal)
            button2.setTitle("2年生", for: .normal)
            button1.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
            button2.setTitleColor(UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0), for: .normal)
           
        case 1:
            divisionFlag = 1
            gradeFlag = 1
            displayArray = highSchool1
            displayArray1 = highSchool3
            button1.setTitle("２年生", for: .normal)
            button2.setTitle("３年生", for: .normal)
            button1.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
            button2.backgroundColor = UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0)
            button1.setTitleColor(UIColor(red: 155/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0), for: .normal)
            button2.setTitleColor(UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0), for: .normal)
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let label1 = cell.contentView.viewWithTag(1) as! UILabel
        label1.text = displayArray[indexPath.row]
        
        let label2 = cell.contentView.viewWithTag(2) as! UILabel
        label2.text = displayArray1[indexPath.row]
        
       
        
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
            let secondVC = segue.destination as! detailViewController
            secondVC.index = self.index
            secondVC.divisionFlag = self.divisionFlag
            secondVC.gradeFlag = self.gradeFlag
        }
    }
    
    
    

}

