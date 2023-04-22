//
//  IconTitleSubtitleIconCell.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public final class IconTitleSubtitleCell: UIView {
    private let textStackView = UIStackView()
    public let iconView = IconAtomView()
    public let titleView = TextAtomView()
    public let subtitleView = TextAtomView()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        stupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func stupView() {
        backgroundColor = .clear
        textStackView.axis = .vertical
        textStackView.spacing = .xSmall
        textStackView.addArrangedSubview(titleView)
        textStackView.addArrangedSubview(subtitleView)

        let views: [UIView] = [iconView, textStackView]
        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }

        NSLayoutConstraint.activate(
            [
                iconView.leftAnchor.constraint(equalTo: leftAnchor, constant: .large),
                iconView.topAnchor.constraint(equalTo: topAnchor, constant: .large),
                iconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -.large),

                textStackView.centerYAnchor.constraint(equalTo: iconView.centerYAnchor),

                textStackView.leftAnchor.constraint(equalTo: iconView.rightAnchor, constant: .medium),
                textStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -.large),
            ]
        )
    }
}
