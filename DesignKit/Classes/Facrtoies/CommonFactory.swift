//
//  CommonFactory.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public protocol ICommonFactory: IAtomFactory, IMoleculeFactory, IOrganismeFactory {

}

public final class CommonFactory: ICommonFactory  {

    private let atomFactory: IAtomFactory
    private let moleculeFactory: IMoleculeFactory
    private let organismeFactory: IOrganismeFactory

    public init(
        atomFactory: IAtomFactory = AtomFactory(),
        moleculeFactory: IMoleculeFactory = MoleculeFactory(),
        organismeFactory: IOrganismeFactory = OrganismeFactory()
    ) {
        self.atomFactory = atomFactory
        self.moleculeFactory = moleculeFactory
        self.organismeFactory = organismeFactory
    }
}

extension CommonFactory: IAtomFactory {
    public func makeTextAtom() -> TextAtomView {
        atomFactory.makeTextAtom()
    }

    public func makeIconAtom() -> IconAtomView {
        atomFactory.makeIconAtom()
    }
}

extension CommonFactory: IMoleculeFactory {
    public func makeIconTitleSubtitleCell() -> IconTitleSubtitleCell {
        moleculeFactory.makeIconTitleSubtitleCell()
    }

    public func makeTitleSubtitleIconCell() -> TitleSubtitleIconCell {
        moleculeFactory.makeTitleSubtitleIconCell()
    }
}

extension CommonFactory: IOrganismeFactory {
    public func makeVerticalContentCard() -> VerticalContentCard {
        organismeFactory.makeVerticalContentCard()
    }
}

