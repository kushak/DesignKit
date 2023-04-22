//
//  OrganismeFactory.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public protocol IOrganismeFactory {
    func makeVerticalContentCard() -> VerticalContentCard
//    func makeIconAtom() -> IconAtomView
}

public final class OrganismeFactory: IOrganismeFactory {
    public init() { }

    public func makeVerticalContentCard() -> VerticalContentCard {
        VerticalContentCard()
    }
}
