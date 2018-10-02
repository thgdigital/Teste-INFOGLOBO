//
//  HomeviewControllerBuilder.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import UIKit

class HomeviewControllerBuild: StoryboardInstanciate {
    
    var storyboardName: String = "Main"
    
      func make(wireframe: Homewireframe) ->  UINavigationController {
        
        let viewController =  self.viewControllerFromStoryboard(withIdentifier: "HomeViewController") as! HomeViewController
        
        let presenter = HomePresenterBuilder.make(wireframe: wireframe)
       
        viewController.presenter = presenter
        
        presenter.output = viewController
        
        let navigation = UINavigationController(rootViewController: viewController)
        
        return navigation
    }
}
