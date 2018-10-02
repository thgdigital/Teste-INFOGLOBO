//
//  HomePresenterBuilder.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class HomePresenterBuilder {
    
    static func make(wireframe: Homewireframe) -> HomePresenter {
        
        let interactor = HomeInteractorBuilder.make()
       
        let presenter = HomePresenter(interactor: interactor, wireframe: wireframe)
        
        interactor.output = presenter
        
        return presenter
    }
}
