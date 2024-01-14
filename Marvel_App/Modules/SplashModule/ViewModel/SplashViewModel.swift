//
//  SplashViewModel.swift
//  Marvel_App
//
//  Created by eng-oday on 14/01/2024.
//

import Foundation
import UIKit
import RxSwift



protocol AnimationUseCase{
    func startAnimation(view:UIView, logoImage:UIImageView)
}

final class SplashViewModel:AnimationUseCase {

    let disposeBag                          = DisposeBag()
    let applyLogoAnimationTrigger           = PublishSubject<Void>()
    let goToHomeSubject                     = PublishSubject<Void>()
    var animationManager:AnimationManager?
    

    init(animationManager:AnimationManager){
        self.animationManager = animationManager
    }
    
    func startAnimation(view: UIView, logoImage: UIImageView) {
        animationManager?.applyAnimation(view, logoImage, completion: { [weak self] in
            guard let self else {return}
            self.animationManager?.animate(view, logoImage, completion: {
                self.animationManager?.hideLogoWithAnimation(logoImage, completion: {
                    self.goToHomeSubject.onNext(())
                })
            })
        })
        
    }
        
}
