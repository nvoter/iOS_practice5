//
//  Router.swift
//  ArchitecturesShowcase
//
//  Created by Анастасия on 17.11.2023.
//

import UIKit

protocol RoutingLogic {
    func goToStart()
}

final class Router : RoutingLogic {
    var vc: DisplayLogic?
    weak var csvc: CSViewController?
    
    func goToStart() {
        vc?.displayStart()
        csvc?.present(MVCViewController(), animated: false)
    }
}
