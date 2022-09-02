//
//  VerificationButton.swift
//  MailCheck
//
//  Created by Надежда Левицкая on 8/24/22.
//

import Foundation
import UIKit

class VerificationButton: UIButton{
    
    public var isValid = false {
        didSet {
            if self.isValid{
                setValidSettings()
            } else {
                setNotValidSettings()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        backgroundColor = UIColor .white
        setTitle("Verification Button", for: .normal)
        let color = UIColor .black
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont(name: "Avenir Book", size: 17)
        isEnabled = false
        alpha = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSettings(){
        isEnabled = false
        alpha = 0.5
    }
    
    private func setValidSettings(){
        isEnabled = true
        alpha = 1
    }
    
    public func setDefaultSetting() {
        configure()
    }
}
