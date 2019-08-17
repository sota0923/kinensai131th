//
//  TTViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/05/24.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit

class TTViewController: UIViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet var firstView: UIView!
    @IBOutlet var secondView: UIView!
    @IBOutlet var tirthview: UIView!
    @IBOutlet var fourthview: UIView!
    @IBOutlet var fivthview: UIView!
    @IBOutlet var sixthview: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         self.view.addSubview(firstView)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
