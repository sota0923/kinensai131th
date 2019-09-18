//
//  Map2ViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/07/15.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Map2ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapview: MKMapView!
    var myLocationManager:CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialCoordinate = CLLocationCoordinate2DMake(35.1799,136.9297)
        
        // 表示する範囲を指定
        let span = MKCoordinateSpan(latitudeDelta: 0.0030, longitudeDelta: 0.0030)
        
        // 領域を作成
        let region = MKCoordinateRegion(center: initialCoordinate, span: span)
        
        // 領域をmapViewに設定
        mapview.setRegion(region, animated:true)
        
        // ピンを複数立てる
        addAnnotation(35.1800,136.9303, "ステージ", "記念祭ステージ会場")
        addAnnotation(35.1801,136.9295, "講堂", "記念祭講堂企画")
        addAnnotation(35.1799,136.9290, "高校校舎", "記念祭高校クラス企画会場")
        addAnnotation(35.1804,136.9289, "中学校舎", "記念祭中学クラス企画会場")
        addAnnotation(35.1801,136.9287, "中庭", "記念祭中庭会場")
        
        //CLLocationManagerをインスタンス化
        myLocationManager = CLLocationManager()
        
        
        //位置情報使用許可のリクエストを表示するメソッドの呼び出し
        myLocationManager.requestWhenInUseAuthorization()

    

        // Do any additional setup after loading the view.
    }
    
    //位置情報取得に失敗したときに呼び出されるメソッド
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error")
    }
    
    func addAnnotation(_ latitude: CLLocationDegrees,_ longitude: CLLocationDegrees,_ title:String,_ subtitle:String) {
        
        // ピンの生成
        let annotation = MKPointAnnotation()
        
        // 緯度経度を指定
        annotation.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        
        // タイトル、サブタイトルを設定
        annotation.title = title
        annotation.subtitle = subtitle
        
        // mapViewに追加
        mapview.addAnnotation(annotation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
