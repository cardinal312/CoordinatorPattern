//
//  MainViewControllerCoordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

final class MainViewControllerCoordinator: BaseCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainViewController = MainViewController()
        mainViewController.mainViewControllerCoordinator = self
        self.navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func moveToSecondVC() {
        let secondViewControllerCoordinator = SecondViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: secondViewControllerCoordinator)
        secondViewControllerCoordinator.start()
    }
    
    func moveToThirdVC() {
        let thirdViewControllerCoordinator = ThirdViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: thirdViewControllerCoordinator)
        thirdViewControllerCoordinator.start()
    }
}
