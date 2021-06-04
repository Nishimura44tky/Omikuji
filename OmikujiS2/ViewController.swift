//
//  ViewController.swift
//  OmikujiS2
//
//  Created by 西村拓也 on 2021/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Image1: UIImageView!
    
    @IBOutlet weak var daimei: UILabel!
    
    
    @IBAction func ssss(_ sender: Any) {
        performSegue(withIdentifier: "goP", sender: nil) //goP　のSegue で画面遷移する。nil=画面遷移するだけ
    }
    
}

