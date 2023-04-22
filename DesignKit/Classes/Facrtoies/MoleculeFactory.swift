//
//  MoleculeFactory.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 22.04.2023.
//

import Foundation

public protocol IMoleculeFactory {
    func makeIconTitleSubtitleCell() -> IconTitleSubtitleCell
    func makeTitleSubtitleIconCell() -> TitleSubtitleIconCell
}

public final class MoleculeFactory: IMoleculeFactory {
    public init() { }
    
    public func makeIconTitleSubtitleCell() -> IconTitleSubtitleCell {
        IconTitleSubtitleCell()
    }

    public func makeTitleSubtitleIconCell() -> TitleSubtitleIconCell {
        TitleSubtitleIconCell()
    }
}
