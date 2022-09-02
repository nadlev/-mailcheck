//
//  StatusLabel.swift
//  MailCheck
//
//  Created by Надежда Левицкая on 8/24/22.
//

import Foundation
import UIKit

class StatusLabel: UILabel{
    
    public var isValid = false {
        didSet {
            if self.isValid{
                setValidSettings()
            } else {
                setNotValidSettings()
            }
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        text = "Check you mail"
        textColor = UIColor .white
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSettings(){
        text = "Mail is not valid. Example: name@domain.ua"
        textColor = #colorLiteral(red: 0.6470588235, green: 0.1058823529, blue: 0.0431372549, alpha: 1)
    }
    
    private func setValidSettings(){
        text = "Mail is not valid"
        textColor = #colorLiteral(red: 0.2497873604, green: 0.4077935815, blue: 0.1341548562, alpha: 1)
    }
    public func setDefaultSetting() {
        configure()
    }
}
