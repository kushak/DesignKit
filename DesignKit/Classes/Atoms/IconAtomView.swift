//
//  IconAtomView.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public final class IconAtomView: UIView {
    private let imageView = UIImageView()

    public  var style: IconStyle = .m {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    public var image: UIImage? {
        get { imageView.image }
        set { imageView.image = newValue }
    }

    public override var intrinsicContentSize: CGSize {
        return .init(width: style.size.rawValue, height: style.size.rawValue)
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)

        NSLayoutConstraint.activate(
            [
                imageView.leftAnchor.constraint(equalTo: leftAnchor),
                imageView.rightAnchor.constraint(equalTo: rightAnchor),
                imageView.topAnchor.constraint(equalTo: topAnchor),
                imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
                imageView.widthAnchor.constraint(equalToConstant: style.size.rawValue),
                imageView.heightAnchor.constraint(equalToConstant: style.size.rawValue),
            ]
        )
    }
}
