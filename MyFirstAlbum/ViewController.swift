//
//  ViewController.swift
//  MyFirstAlbum
//
//  Created by Seogun Kim on 2021/07/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentValue: Int = 0


    @IBAction func alertBtn(_ sender: Any) {
        
        let message = "이 제품의 가격은 $\(currentValue) 입니다."
        
        let alert = UIAlertController(title: "옵션", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "추가", style: .default, handler: { UIAlertAction in
            print("추가 버튼 선택")
        }))
        
        alert.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { UIAlertAction in
            print("취소 버튼 선택")
        }))
        
        alert.addAction(UIAlertAction(title: "확인", style: .default, handler: { UIAlertAction in
            print("확인 버튼 선택")
        }))
        
        self.present(alert, animated: true) {
            print("버튼을 클릭했습니다,")
        }
        
        let randomPrice = arc4random_uniform(100000) + 1
        currentValue = Int(randomPrice)
    }
}

