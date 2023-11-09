//
//  ThirdViewController.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var thirdViewControllerCoordinator: ThirdViewControllerCoordinator?
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        navigationItem.title = Localization.third
    }
}
