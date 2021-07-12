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


    @IBAction func alertBtn(_ sender: Any) {
        let alert = UIAlertController(title: "옵션", message: "옵션을 선택해주세요", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "추가", style: .default, handler: { UIAlertAction in
            print("추가 버튼 선택")
        }))
        
        alert.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { UIAlertAction in
            print("취소 버튼 선택")
        }))
        
        alert.addAction(UIAlertAction(title: "확인", style: .destructive, handler: { UIAlertAction in
            print("확인 버튼 선택")
        }))
        
        self.present(alert, animated: true) {
            print("버튼을 클릭했습니다,")
        }
    }
}

