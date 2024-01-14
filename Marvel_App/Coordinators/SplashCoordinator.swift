//
//  SplashCoordinator.swift
//  Marvel_App
//
//  Created by eng-oday on 14/01/2024.
//

import Foundation
import UIKit



//final class SplashCoordinator:Coordinator {
//    private (set) var childCoordinator: [Coordinator] = []
//    
//    private let navigationController:UINavigationController
//    
//    init(navigationController:UINavigationController){
//        self.navigationController = navigationController
//    }
//    
//    func start() {
//        let splashVC                        = SplashViewController()
//        let splashViewModel                 = SplashViewModel(animationManager: DefaultAnimationManager())
//        splashViewModel.splashCoordinator   = self
//        splashVC.splashViewModel            = splashViewModel
//        navigationController.setViewControllers([splashVC], animated: true)
//    }
//    
//    func startHomeCoordinator(){
//        let coordinator = HomeCoordinator(navigationController: navigationController)
//        coordinator.start()
//    }
//}
