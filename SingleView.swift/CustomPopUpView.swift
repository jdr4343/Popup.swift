//
//  CustompopupView.swift
//  SingleView.swift
//
//  Created by 신지훈 on 2021/06/17.
//

import UIKit

class CustomPopUpView: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bgbtn: UIButton!
    @IBOutlet weak var subscriptbtc: UIButton!
    
    var subscribeBtnCompletionClosseure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustompopupView - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        subscriptbtc.layer.cornerRadius = 10
    }
    
    @IBAction func onbgbtnclicked(_ sender: UIButton) {
        print("CustomPopUpView - onbgbtnclicked() called")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSubscriptClicked(_ sender: Any) {
        print("CustomPopUpView - onSubscriptClicked() called")
        
        self.dismiss(animated: true, completion: nil)
        
        //컴플레션 블럭 호출
        if let subscribeBtnCompletionClosseure = subscribeBtnCompletionClosseure{
            //메인이 열린다
        subscribeBtnCompletionClosseure()
    }
    }
}
