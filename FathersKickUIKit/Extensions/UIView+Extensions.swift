//
//  UIView+Extensions.swift
//  FathersKickUIKit
//
//  Created by Сергей Прокопьев on 01.05.2023.
//

import UIKit

public extension UIView {
    func addBottomShadow() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowOpacity = 0.7
    }
}

//MARK: - Gradient layer

public extension UIView {
    func addGradientLayer(with colors: [CGColor]) {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.frame = self.bounds
        gradient.cornerRadius = 10
        gradient.colors = colors
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
