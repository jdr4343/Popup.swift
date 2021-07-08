//
//  ViewController.swift
//  SingleView.swift
//
//  Created by 신지훈 on 2021/06/17.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var MyWep: WKWebView!
    @IBOutlet weak var createpopupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func oncreatepopupBtncliked(_ sender: UIButton) {
        
        print("ViewController - oncreatepopupBtncliked() called")
        //스토리보드 가저오기
        let storybored = UIStoryboard.init(name: "Popup", bundle: nil)
        //스토리 보드를 통해 뷰컨트롤러 가져오기
        let customPopupVC = storybored.instantiateViewController(identifier: "AlertPopupVC") as CustomPopUpView
        //뷰 컨트롤러가 보여지는 스타일
        customPopupVC.modalPresentationStyle = .overCurrentContext
        //뷰 컨트롤러가 사라지는 스타일
        customPopupVC.modalTransitionStyle = .crossDissolve
        //다른 뷰 컨트롤러를 보여주는것 현재있는 뷰컨트롤러에서 위에서 바로 보여줌
        
        customPopupVC.subscribeBtnCompletionClosseure = {
            print("컴플레션 블럭이 호출되었다.")
            let myChannelUrl = URL(string:"https://www.youtube.com/?app=desktop&gl=UG&hl=ko&client=y")
            self.MyWep.load(URLRequest(url: myChannelUrl!))
        }
        
        self.present(customPopupVC, animated: true, completion: nil)
    }
    
}

