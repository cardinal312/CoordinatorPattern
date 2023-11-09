//
//  MainViewController.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

class MainViewController: UIViewController {
    
    weak var mainViewControllerCoordinator: MainViewControllerCoordinator?
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray.withAlphaComponent(0.9)
        navigationItem.title = Localization.main
        setupRightNavButtons()
    }
}

private extension MainViewController {
    
    private func setupRightNavButtons() {
        
        let goToSecondVCButton = UIBarButtonItem(title: "2", style: .plain, target: self, action: #selector(goToSecondVCButtonTapped(sender:)))
        let goToThirdVCButton = UIBarButtonItem(title: "3", style: .plain, target: self, action: #selector(goToThirdVCButtonTapped(sender:)))
        
        navigationItem.rightBarButtonItems = [goToThirdVCButton, goToSecondVCButton]
    }
    
    @objc private func goToSecondVCButtonTapped(sender: UIBarButtonItem) {
        print(#function)
        mainViewControllerCoordinator?.moveToSecondVC()
    }
    
    @objc private func goToThirdVCButtonTapped(sender: UIBarButtonItem) {
        print(#function)
        mainViewControllerCoordinator?.moveToThirdVC()
    }
}
