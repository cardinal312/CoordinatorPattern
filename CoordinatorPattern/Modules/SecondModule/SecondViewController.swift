//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var secondViewControllerCoordinator: SecondViewControllerCoordinator?

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        navigationItem.title = Localization.second
    }
}
