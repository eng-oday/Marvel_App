//
//  Coordinator.swift
//  Marvel_App
//
//  Created by eng-oday on 14/01/2024.
//

import Foundation
import UIKit


protocol Coordinator:AnyObject {
    var childCoordinator:[Coordinator] {get}
    func start()
}


final class AppCoordinator:Coordinator {

    private (set) var childCoordinator: [Coordinator] = []
    private let window:UIWindow
    private let navigationController = UINavigationController()
    init(window:UIWindow){
        self.window = window
    }
    
//    func start() {
//        let splashCoordinator = SplashCoordinator(navigationController: navigationController)
//        window.rootViewController = navigationController
//        window.makeKeyAndVisible()
//        splashCoordinator.start()
//    }
}
