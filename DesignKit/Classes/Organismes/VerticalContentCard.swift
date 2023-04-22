//
//  VerticalContentCard.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public final class VerticalContentCard: UIView {
    private let stackView = UIStackView()
    public let headerText = TextAtomView()
    public var contentViews: [UIView] = [] {
        didSet {
            stackView.arrangedSubviews.forEach {
                $0.removeFromSuperview()
            }

            contentViews.forEach {
                stackView.addArrangedSubview($0)
            }
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        stupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func stupView() {
        stackView.axis = .vertical
        let views: [UIView] = [headerText, stackView]
        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }

        NSLayoutConstraint.activate(
            [
                headerText.leftAnchor.constraint(equalTo: leftAnchor, constant: .large),
                headerText.topAnchor.constraint(equalTo: topAnchor, constant: .medium),
                headerText.rightAnchor.constraint(equalTo: rightAnchor, constant: -.large),

                stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: .large),
                stackView.topAnchor.constraint(equalTo: headerText.bottomAnchor, constant: 0),
                stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
                stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -.large),
            ]
        )
    }
}
