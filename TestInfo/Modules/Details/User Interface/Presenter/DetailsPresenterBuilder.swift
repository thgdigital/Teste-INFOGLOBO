//
//  DetailsPresenterBuilder.swift
//  TestInfo
//
//  Created by Thiago Santos on 01/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation


class DetailsPresenterBuilder {
    
    static func make(item: ContentItem) -> DetailsPresenter{
       
        let presenter = DetailsPresenter(item: item)
        
        return presenter
    }
}
