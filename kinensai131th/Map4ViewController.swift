//
//  Map4ViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/09/13.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit

class Map4ViewController: UIViewController {

    @IBOutlet weak var Map: UIImageView!
    
    @IBOutlet weak var button1: Button_Cocyom!
    @IBOutlet weak var button2: Button_Cocyom!
    @IBOutlet weak var button3: Button_Cocyom!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 表示する画像を設定する.
        let image = UIImage(named: "劣化見開き.png")
        // 画像をUIImageViewに設定する.
        
        Map.image = image
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func first() {
        // 表示する画像を設定する.
        let image = UIImage(named: "きれいな見開き２.png")
        // 画像をUIImageViewに設定する.
        Map.image = image
        button1.setTitle("1階", for: .normal)
        button2.setTitle("3階", for: .normal)
        button3.setTitle("4・5階", for: .normal)
    }
    
    @IBAction func secound() {
        // 表示する画像を設定する.
        let image = UIImage(named: "劣化３.png")
        // 画像をUIImageViewに設定する.
        Map.image = image
        button1.setTitle("1階", for: .normal)
        button2.setTitle("2階", for: .normal)
        button3.setTitle("4・5階", for: .normal)
    }
    
    @IBAction func third() {
        // 表示する画像を設定する.
        let image = UIImage(named: "rekka4-1.png")
        // 画像をUIImageViewに設定する.
        Map.image = image
        button1.setTitle("1階", for: .normal)
        button2.setTitle("2階", for: .normal)
        button3.setTitle("3階", for: .normal)
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
