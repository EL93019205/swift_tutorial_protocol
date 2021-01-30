//
//  ViewController.swift
//  swift_tutorial_protocol
//
//  Created by 早川マイケル on 2021/01/30.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    @IBOutlet weak var label: UILabel!
    var count = 0

    // 起動時に呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルを初期化
        label.text = String(count)
    }

    // 次へボタン
    @IBAction func next(_ sender: Any) {
        
        // next方向へルートを辿る
        performSegue(withIdentifier: "next", sender: nil)
    }

    // ルートを辿る時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 辿り先のViewControllerを取得する
        let nextVC = segue.destination as! NextViewController
        
        // 辿り先のデリゲートに自身のデリゲートを設定しておく
        nextVC.delegate = self
        
        // カウントの値を引き継ぐ
        nextVC.count = self.count
    }

    // 戻る時に実行
    func catchData(count: Int) {
        self.count = count
        label.text = String(count)
    }

}

