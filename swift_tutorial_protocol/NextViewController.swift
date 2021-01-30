//
//  NextViewController.swift
//  swift_tutorial_protocol
//
//  Created by 早川マイケル on 2021/01/30.
//

import UIKit

// 仕様書
protocol CatchProtocol{
    // 規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var count:Int = 0
    var delegate:CatchProtocol?

    // 起動時実行
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(count)

        

    }
    
    // プラスボタン
    @IBAction func plus(_ sender: Any) {
        count = count + 1
        label.text = String(count)
    }
    
    // 戻るボタン
    @IBAction func back(_ sender: Any) {
        // Aクラス側のcatchDataを使用する
        delegate?.catchData(count: count)
        
        // 戻る
        dismiss(animated: true, completion: nil)
    }
    

}
