//
//  BaseCoordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 9/11/23.
//

import UIKit

class BaseCoordinator: Coordinator {
    
    var childCoornators: [Coordinator] = []
    
    func start() {
        fatalError("Child coordinator should implemenent this start func")
    }
}
