//
//  String+TextStyle.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

extension String {
    public func applying(_ textStyle: TextStyle) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: textStyle.attrubutes)
    }
}

extension TextStyle {
    var attrubutes: [NSAttributedString.Key: Any] {
        var attributes: [NSAttributedString.Key: Any] = [:]
        let font = UIFont(
            name: fontName.rawValue,
            size: CGFloat(fontSize.rawValue)
        )
        attributes[.font] = font
        attributes[.kern] = CGFloat(letterSpacing.rawValue)

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = CGFloat(lineHeight.rawValue)
        paragraphStyle.maximumLineHeight = CGFloat(lineHeight.rawValue)
        attributes[.paragraphStyle] = paragraphStyle
        return attributes
    }
}
