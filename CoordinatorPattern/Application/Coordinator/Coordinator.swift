//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Macbook on 7/11/23.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var childCoornators: [Coordinator] { get set }
    func start()
    
}

extension Coordinator {
    
    func add(coordinator: Coordinator) {
        childCoornators.append(coordinator)
    }
    
    func remove(coordinator: Coordinator) {
        childCoornators = childCoornators.filter { $0 !== coordinator }
    }
}
