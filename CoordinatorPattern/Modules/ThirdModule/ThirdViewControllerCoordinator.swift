//
//  ThirdViewControllerCoordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

final class ThirdViewControllerCoordinator: BaseCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let thirdViewController = ThirdViewController()
        thirdViewController.thirdViewControllerCoordinator = self
        self.navigationController.pushViewController(thirdViewController, animated: true)
    }
}
