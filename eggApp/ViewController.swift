//
//  ViewController.swift
//  eggApp
//
//  Created by 茶谷美咲 on 2020/09/05.
//  Copyright © 2020 Misaki Chatani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        countLabel.text = String(count)
        
        dispImage()
    }

    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var textLabel: UILabel!
//　　スタートの初期値
    var count : Int = 100
    
    

    @IBOutlet var imageView: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage()  {
        let imageArrary = ["egg01","egg02","egg03"]
        
        let name = imageArrary[dispImageNum]
//       （例）name = egg01.02.03
// dispImageNumは0と定義されているから0
        let image = UIImage(named: name)
    
        imageView.image = image
        
    }
    
//1つずつ減らす処理
    
    
    @IBAction func botton(_ sender: Any) {
    
    count = count - 1
    countLabel.text = String(count)
        
//　　　カウント数に応じたテキストの変更
        if (count == 75) {
            textLabel.text = "まだまだ！"
        } else if (count == 50) {
            textLabel.text = "まだ！"
            dispImageNum += 1
// +=でimageArraryを1ずつ増やす（写真を＋にする）
        } else if (count == 25) {
            textLabel.text = "もうちょっと！"
        } else if (count == 0) {
            dispImageNum += 1
        }
        
        dispImage()
//　dispImageは関数
    }
}

