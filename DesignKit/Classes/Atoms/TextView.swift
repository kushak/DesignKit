//
//  TextView.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public final class TextAtomView: UIView {

    private let label = UILabel()

    public var style: TextStyle = .bodyM {
        didSet {
            updateContent()
        }
    }

    public var text: String? = nil {
        didSet {
            guard oldValue != text else { return }
            updateContent()
        }
    }

    public var textColor: UIColor? {
        get {label.textColor }
        set {label.textColor = newValue }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint.activate(
            [
                label.leftAnchor.constraint(equalTo: leftAnchor),
                label.rightAnchor.constraint(equalTo: rightAnchor),
                label.topAnchor.constraint(equalTo: topAnchor),
                label.bottomAnchor.constraint(equalTo: bottomAnchor),
            ]
        )
    }

    private func updateContent() {
        label.font = UIFont(
            name: style.fontName.rawValue,
            size: CGFloat(style.fontSize.rawValue)
        )
        label.text = text
//        label.attributedText = text?.applying(style)
    }
}
