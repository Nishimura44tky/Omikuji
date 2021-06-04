//
//  OmikujiViewController.swift
//  OmikujiS2
//
//  Created by 西村拓也 on 2021/05/22.
//

import UIKit

class OmikujiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var image: UIImageView! //イメージのIBOutlet
    
    
    @IBOutlet weak var label: UILabel! //ラベルのIBOutlet
    
    var number = 0 // number変数の初期値を0にする
    
    @IBAction func button(_ sender: Any) {//ボタンのIBAction
        
        //0,1,2,3の数値をランダムに算出（乱数）　Int.random(in: 0..<4)
        //number = Int.random(in: 0..<4)
        
        //新しいおみくじの結果を一時的に格納する変数を設ける
        var newNumber = 0
        
        //ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        //repeatは繰り返しを意味する
        repeat {
            
            //0,1,2,3の数値をランダムに算出（乱数）　Int.random(in: 0..<4)
            newNumber = Int.random(in: 0..<4)
            
            //前回と同じ結果の時は、再度ランダムに数値を出す
            //異なる結果の時は、repeatを抜ける
        } while number == newNumber
        
        number = newNumber //新しいおみくじの結果を格納
        
        if number == 0 { //if、numberが0なら大吉
            label.text = "やたー！大吉だ！！"
            image.image = UIImage(named:"Daikiti")
            
        } else if number == 1 { //if、numberが1なら中吉
            
            label.text = "おっし！中吉だ！"
            image.image = UIImage(named:"Chukiti")
            
        } else if number == 2 { //if、numberが2なら小吉
            
            label.text = "お〜！小吉か。"
            image.image = UIImage(named:"Syoukiti")
            
        } else if number == 3 { //if、numberが3なら末吉
            
            label.text = "おーし。末吉だな。。"
            image.image = UIImage(named:"Suekiti")
            
        }
    }
    
}
    
