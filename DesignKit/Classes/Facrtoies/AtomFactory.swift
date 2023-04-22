//
//  AtomFactory.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 21.04.2023.
//

import Foundation

public protocol IAtomFactory {
    func makeTextAtom() -> TextAtomView
    func makeIconAtom() -> IconAtomView
}

public final class AtomFactory: IAtomFactory {
    public init() {

    }

    public func makeTextAtom() -> TextAtomView {
        TextAtomView()
    }

    public func makeIconAtom() -> IconAtomView {
        IconAtomView()
    }

    public func makeButton() -> Button {
        return ButtonView()
    }
}
