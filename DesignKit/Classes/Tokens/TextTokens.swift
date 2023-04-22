//
//  TextTokens.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public enum FontWeight: String, CaseIterable {
    case regular = "400"
    case bold = "600"
}

public enum FontName: String {
    case proText = "SF Pro Text"
    case proDisplay = "SF Pro Display"
}

public enum FontSize: CGFloat {
    case xs = 13
    case x = 15
    case l = 17
    case xl = 20
}

public enum LetterSpacing: CGFloat {
    case spacingNegative4 = -0.48
    case spacingNegative3 = -0.41
    case spacingNegative2 = -0.24
    case spacingNegative1 = -0.08
    case spacing1 = 0.38
}

public enum LineHeight: CGFloat {
    case xs = 15.51
    case x = 17.9
    case l = 20.29
    case xl = 23.87
}
