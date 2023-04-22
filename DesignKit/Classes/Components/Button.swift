//
//  Button.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 21.04.2023.
//

import Foundation

public protocol Button {

}

struct ButtonStyle {
    let geometry: ButtonGeometry
    let colors: ButtonColors
    let config: ButtonConfig

    static let primary = Self(
        geometry: .small,
        colors: .dark,
        config: .init(title: "Привет")
    )
}

struct ButtonGeometry {
    let size: CGSize
    let cornerRadius: CGFloat?

    static let small = Self(
        size: .init(width: 100, height: 44),
        cornerRadius: 8
    )
}

struct ButtonColors {
    let background: UIColor
    let tintColor: UIColor
    let highlited: UIColor

    static let dark = Self(
        background: .blue,
        tintColor: .white,
        highlited: UIColor.blue.withAlphaComponent(0.5)
    )
}

struct ButtonConfig {
    let title: String
}

final class ButtonView: UIButton, Button {

}
