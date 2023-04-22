//
//  HorizontalContentCard.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation


public enum CardStyle {
    case shadow
    case neutral
}

extension UIView {
    public func apply(style: CardStyle) {

        switch style {
        case .neutral:
            applyNeyatralStyle()
        case .shadow:
            applyShadowStyle()
        }
    }

    public func updateShadowFrame() {
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 24)
        layer.shadowPath = shadowPath.cgPath
    }

    private func applyShadowStyle() {
        layer.cornerRadius = 24
        backgroundColor = .backgroundPrimary

        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 24)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.12).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 34
        layer.shadowOffset = CGSize(width: 0, height: 6)
    }

    private func applyNeyatralStyle() {
        layer.shadowOpacity = 0
        layer.cornerRadius = 24
        backgroundColor = .backgroundSecondary
    }
}
