//
//  SplashViewController.swift
//  Marvel_Discovery
//
//  Created by eng-oday on 03/01/2024.
//

import UIKit
import RxSwift
import RxCocoa


class SplashViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    
    //VIEW MODEL
    var splashViewModel:SplashViewModel = SplashViewModel(animationManager: DefaultAnimationManager())
    let disposeBag      = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
        bindViewModel()
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        splashViewModel.applyLogoAnimationTrigger.onNext(())
    }
    
    
    private func setupInitialState(){
        logoImage.alpha = 0
    }
    
    
    private func bindViewModel() {
        splashViewModel.applyLogoAnimationTrigger
            .subscribe(onNext: { [weak self] in
                guard let self else {return}
                self.splashViewModel.startAnimation(view: self.view, logoImage: self.logoImage)
            })
            .disposed(by: disposeBag)
        
        splashViewModel.goToHomeSubject
            .subscribe(onNext: { [weak self] in
                self?.goToHome()
            })
            .disposed(by: disposeBag)
    }
    
    private func goToHome(){
        let home = HomeViewController()
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let delegate = windowScene.delegate as? SceneDelegate {
            let windows = delegate.window?.windowScene
            let navigationController = UINavigationController(rootViewController: home)
            navigationController.navigationBar.isHidden = true
            navigationController.navigationBar.isTranslucent = true
            windows?.keyWindow?.rootViewController = navigationController
            windows?.keyWindow?.makeKeyAndVisible()
        }
    }
    
    
}

