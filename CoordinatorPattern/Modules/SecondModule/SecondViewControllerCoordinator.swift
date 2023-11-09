//
//  SecondViewControllerCoordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

final class SecondViewControllerCoordinator: BaseCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let secondViewController = SecondViewController()
        secondViewController.secondViewControllerCoordinator = self
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
}
