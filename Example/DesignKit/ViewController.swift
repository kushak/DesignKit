//
//  ViewController.swift
//  DesignKit
//
//  Created by Shipulin Oleg on 04/21/2023.
//  Copyright (c) 2023 Shipulin Oleg. All rights reserved.
//

import UIKit
import DesignKit

class ViewController: UIViewController {
    private let commonFactory = CommonFactory()
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

        stackView.axis = .vertical

        NSLayoutConstraint.activate(
            [
                scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
                scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
                scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
                stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
                stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
                stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 100),
                stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            ]
        )


        let iconTitleSubtitleCellShadow = makeIconTitleSubtitleCell()
        iconTitleSubtitleCellShadow.view?.apply(style: .shadow)
        stackView.addArrangedSubview(iconTitleSubtitleCellShadow)


        let iconTitleSubtitleCellShadow1 = makeIconTitleSubtitleCell(description: nil)
        iconTitleSubtitleCellShadow1.view?.apply(style: .shadow)
        stackView.addArrangedSubview(iconTitleSubtitleCellShadow1)

        let titleSubtitleIconCellShadow = makeTitleSubtitleIconCell()
        titleSubtitleIconCellShadow.view?.apply(style: .shadow)
        stackView.addArrangedSubview(titleSubtitleIconCellShadow)

        let titleSubtitleIconCellShadow1 = makeTitleSubtitleIconCell(description: nil)
        titleSubtitleIconCellShadow1.view?.apply(style: .shadow)
        stackView.addArrangedSubview(titleSubtitleIconCellShadow1)

        let verticalContentCard = makeVerticalContentCard()
        verticalContentCard.view?.apply(style: .shadow)
        stackView.addArrangedSubview(verticalContentCard)

        let iconTitleSubtitleCellNeutral = makeIconTitleSubtitleCell()
        iconTitleSubtitleCellNeutral.view?.apply(style: .neutral)
        stackView.addArrangedSubview(iconTitleSubtitleCellNeutral)

        let iconTitleSubtitleCellNeutral1 = makeIconTitleSubtitleCell(description: nil)
        iconTitleSubtitleCellNeutral1.view?.apply(style: .neutral)
        stackView.addArrangedSubview(iconTitleSubtitleCellNeutral1)

        let titleSubtitleIconCellNeutral = makeTitleSubtitleIconCell()
        titleSubtitleIconCellNeutral.view?.apply(style: .neutral)
        stackView.addArrangedSubview(titleSubtitleIconCellNeutral)

        let titleSubtitleIconCellNeutral1 = makeTitleSubtitleIconCell(description: nil)
        titleSubtitleIconCellNeutral1.view?.apply(style: .neutral)
        stackView.addArrangedSubview(titleSubtitleIconCellNeutral1)

        let verticalContentCard1 = makeVerticalContentCard()
        verticalContentCard1.view?.apply(style: .neutral)
        stackView.addArrangedSubview(verticalContentCard1)

    }

    func makeIconTitleSubtitleCell(description: String? = "Description") -> ContainerView {
        let containerView = ContainerView()
        let cell = commonFactory.makeIconTitleSubtitleCell()
        cell.apply(style: .shadow)
        cell.iconView.style = .m
        cell.iconView.image = UIImage(named: "avatarPlaceholder", in: Bundle.main, with: nil)
        cell.titleView.textColor = .textPrimary
        cell.titleView.style = .bodyL
        cell.titleView.text = "Title"
        cell.subtitleView.textColor = .textSecondary
        cell.subtitleView.style = .bodyS
        cell.subtitleView.text = description
        cell.subtitleView.isHidden = description == nil

        containerView.view = cell

        return containerView
    }

    func makeTitleSubtitleIconCell(description: String? = "Description") -> ContainerView {
        let containerView = ContainerView()
        let cell = commonFactory.makeTitleSubtitleIconCell()
//        cell.apply(style: .shadow)
        cell.iconView.style = .m
        cell.iconView.image = UIImage(named: "avatarPlaceholder", in: Bundle.main, with: nil)
        cell.titleView.textColor = .textPrimary
        cell.titleView.style = .bodyL
        cell.titleView.text = "Title"
        cell.subtitleView.textColor = .textSecondary
        cell.subtitleView.style = .bodyS
        cell.subtitleView.text = description
        cell.subtitleView.isHidden = description == nil

        containerView.view = cell

        return containerView
    }


    func makeVerticalContentCard() -> ContainerView {
        let containerView = ContainerView()
        let view = commonFactory.makeVerticalContentCard()

        view.headerText.style = .headingM
        view.headerText.textColor = .textPrimary
        view.headerText.text = "Header"

        let cells = (0...3).map { _ in
            let cell = commonFactory.makeIconTitleSubtitleCell()
            cell.iconView.style = .m
            cell.iconView.image = UIImage(named: "avatarPlaceholder", in: Bundle.main, with: nil)
            cell.titleView.textColor = .textPrimary
            cell.titleView.style = .bodyL
            cell.titleView.text = "Title"
            cell.subtitleView.textColor = .textSecondary
            cell.subtitleView.style = .bodyS
            cell.subtitleView.text = "Description"
            return cell
        }

        view.contentViews = cells

        containerView.view = view

        return containerView
    }

}

final class ContainerView: UIView {
    var view: UIView? {
        didSet {
            guard let view = view else { return }
            subviews.forEach { $0.removeFromSuperview() }
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
            NSLayoutConstraint.activate(
                [
                    view.leftAnchor.constraint(equalTo: leftAnchor, constant: .medium),
                    view.rightAnchor.constraint(equalTo: rightAnchor, constant: -.medium),
                    view.topAnchor.constraint(equalTo: topAnchor, constant: .small),
                    view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -.small),
                ]
            )
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        view?.updateShadowFrame()
    }
}
