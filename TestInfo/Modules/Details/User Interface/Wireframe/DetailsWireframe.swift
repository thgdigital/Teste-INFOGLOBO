//
//  DetailsWireframe.swift
//  TestInfo
//
//  Created by Thiago Santos on 01/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class DetailsWireframe {
    
  static func make(item: ContentItem) -> DetailsViewController {
        return DetailsViewControllerbuilder().make(item: item)
        
    }
}
