//
//  UIStack View + Extensions.swift
//  MailCheck
//
//  Created by Надежда Левицкая on 8/24/22.
//

import UIKit

extension UIStackView{
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
