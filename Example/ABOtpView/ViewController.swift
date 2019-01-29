//
//  ViewController.swift
//  ABOtpView
//
//  Created by anuranBarman on 01/29/2019.
//  Copyright (c) 2019 anuranBarman. All rights reserved.
//

import UIKit
import ABOtpView

class ViewController: UIViewController,ABOtpViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 50, width:UIScreen.main.bounds.size.width, height: 60))
        label.text = "ABOtpView"
        label.font = UIFont.boldSystemFont(ofSize: 50.0)
        label.textColor = .black
        label.textAlignment = .center
        
        self.view.addSubview(label)
        
        let otpView = ABOtpView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 6, borderType: .ROUND, borderColor: .blue,delegate:self)
        self.view.addSubview(otpView)
        
        let otpView2 = ABOtpView(frame: CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 4, borderType: .SEMI_ROUND, borderColor: .red,delegate:self)
        self.view.addSubview(otpView2)
        
        let otpView3 = ABOtpView(frame: CGRect(x: 0, y: 400, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 5, borderType: .SQUARE, borderColor: .black,delegate:self)
        self.view.addSubview(otpView3)
        
    }
    
    func didEnterOTP(otp: String) {
        print(otp)
    }
    
    
}

