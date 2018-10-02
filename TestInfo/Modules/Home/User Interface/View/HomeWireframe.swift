//
//  HomeWireframe.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import UIKit

class Homewireframe {
    
    var viewController: UINavigationController?
    
    func make() -> UINavigationController? {
        
        let viewController  = HomeviewControllerBuild().make(wireframe: self)
        
        self.viewController = viewController
        
        return viewController
    }
    func showDetails(item: ContentItem){
        
        self.viewController?.pushViewController(DetailsWireframe.make(item: item), animated: true)
    }
}
