//
//  HomeInteractorBuilder.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class HomeInteractorBuilder {
    
    static func make()-> HomeInteractor {
        
        let manager = HomeManager()
        
        let interactor = HomeInteractor(manager: manager)
        
        manager.output = interactor
        
        return interactor
    }
}
