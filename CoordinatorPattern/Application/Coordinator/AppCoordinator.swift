//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 7/11/23.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow?
    private let navigationController: UINavigationController = {
        let navigation = UINavigationController()
            
        return navigation
    }()
    
    init(window: UIWindow?) {
        guard let window = window else { return }
        self.window = window
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    override func start() {
        let mainViewConontroller = MainViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: mainViewConontroller)
        mainViewConontroller.start()
    }
}
