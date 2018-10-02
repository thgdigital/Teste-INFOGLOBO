//
//  DetailsViewControllerBuilder.swift
//  TestInfo
//
//  Created by Thiago Santos on 01/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation


class DetailsViewControllerbuilder: StoryboardInstanciate {
     var storyboardName: String = "Details"
    
     func make(item: ContentItem) -> DetailsViewController{
        
        let viewController =  self.viewControllerFromStoryboard(withIdentifier: "DetailsViewController") as! DetailsViewController
        let presenter = DetailsPresenterBuilder.make(item: item)
        
        viewController.presenter = presenter
        
        presenter.output = viewController
        
        return viewController
    }
}
