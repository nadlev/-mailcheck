//
//  String + extensions.swift
//  MailCheck
//
//  Created by Надежда Левицкая on 8/30/22.
//

import Foundation

extension String {
    
    func isValid() -> Bool {
        let format = "SELF MATCHES%@"
        let regEx = "[a-zA-Z0-9._]+@[a-zA-Z]+\\.[a-zA-Z]{2,}"
        return NSPredicate(format: format, regEx).evaluate(with: self)
    }
}
