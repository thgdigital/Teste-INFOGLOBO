//
//  FeatureDisplayMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class FeatureDisplayMapper {
    
    static func make(item: ContentItem) ->FeatureDisplay {
        
        var display = FeatureDisplay()
        
        display.title = item.title
        
        display.type = item.section.type.rawValue.uppercased()
        
        display.image = item.imagens.first?.url ?? ""
        
        return display
    }
}
