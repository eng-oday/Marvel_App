//
//  HomeViewModel.swift
//  Marvel_App
//
//  Created by eng-oday on 14/01/2024.
//

import Foundation
import RxSwift
import RxCocoa



protocol HomeViewModelType {
    func call()
}

final class HomeViewModel:HomeViewModelType {

    private let networkManager:NetworkManagerUseCase!
    
    init(networkManager: NetworkManagerUseCase!) {
        self.networkManager = networkManager
    }
    
    func call() {
        networkManager.getCharacters()
    }
}
