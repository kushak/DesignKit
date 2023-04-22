//
//  Colors.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

extension UIColor {
    // MARK: Semantic
    public static let textPrimary = UIColor.colorWith(light: textPrimaryLight, dark: textPrimaryDark)
    public static let textSecondary = UIColor.colorWith(light: textSecondaryLight, dark: textSecondaryDark)
    public static let textAccent = UIColor.colorWith(light: textAccentLight, dark: textAccentDark)

    public static let backgroundPrimary = UIColor.colorWith(light: backgroundPrimaryLight, dark: backgroundPrimaryDark)
    public static let backgroundSecondary = UIColor.colorWith(light: backgroundSecondaryLight, dark: backgroundSecondaryDark)

    // MARK: Light
    static let textPrimaryLight = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    static let textSecondaryLight = UIColor(red: 0.573, green: 0.6, blue: 0.635, alpha: 1)
    static let textAccentLight = UIColor(red: 0.259, green: 0.545, blue: 0.976, alpha: 1)

    static let backgroundPrimaryLight = UIColor.white
    static let backgroundSecondaryLight = UIColor(red: 0.965, green: 0.969, blue: 0.973, alpha: 1)

    // MARK: Dark
    static let textPrimaryDark = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    static let textSecondaryDark = UIColor(red: 0.573, green: 0.6, blue: 0.635, alpha: 1)
    static let textAccentDark = UIColor(red: 0.259, green: 0.545, blue: 0.976, alpha: 1)

    static let backgroundPrimaryDark = UIColor.white
    static let backgroundSecondaryDark = UIColor(red: 0.965, green: 0.969, blue: 0.973, alpha: 1)

}
