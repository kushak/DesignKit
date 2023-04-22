//
//  ComponentFactory.swift
//  DesignKit
//
//  Created by Shipulin Oleg Gennadyevich on 21.04.2023.
//

import Foundation

protocol IComponentFactory {

}

public struct ComponentDependecies {

    public init() {

    }
}

public final class ComponentFactory {

    public init(dependencies: ComponentDependecies) {

    }

    func makeButton() -> Button {
        return ButtonView()
    }
}
