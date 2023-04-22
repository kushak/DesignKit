//
//  TextStyle.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public struct TextStyle {
    public let fontName: FontName
    public let fontWeight: FontWeight
    public let lineHeight: LineHeight
    public let fontSize: FontSize
    public let letterSpacing: LetterSpacing


    // MARK - Heading
    public static let headingM = Self(
        fontName: .proDisplay,
        fontWeight: .bold,
        lineHeight: .xl,
        fontSize: .xl,
        letterSpacing: .spacing1
    )

    // MARK - Body

    public static let bodyS = Self(
        fontName: .proText,
        fontWeight: .regular,
        lineHeight: .xs,
        fontSize: .xs,
        letterSpacing: .spacingNegative1
    )

    public static let bodyM = Self(
        fontName: .proText,
        fontWeight: .regular,
        lineHeight: .x,
        fontSize: .x,
        letterSpacing: .spacingNegative2
    )

    public static let bodyL = Self(
        fontName: .proText,
        fontWeight: .regular,
        lineHeight: .l,
        fontSize: .l,
        letterSpacing: .spacingNegative3
    )

    // MARK - Control
    public static let controlM = Self(
        fontName: .proText,
        fontWeight: .regular,
        lineHeight: .xs,
        fontSize: .xs,
        letterSpacing: .spacingNegative2
    )

    public static let controlL = Self(
        fontName: .proText,
        fontWeight: .regular,
        lineHeight: .x,
        fontSize: .x,
        letterSpacing: .spacingNegative3
    )
}
