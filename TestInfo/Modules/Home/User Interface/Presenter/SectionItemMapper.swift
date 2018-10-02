//
//  SectionItemMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class SectionItemMapper {
    
    static func make(entity:SectionEntity) -> SectionItem {
        var item = SectionItem()
        item.name = entity.name
        item.type = entity.type
        item.url = entity.url
        
        return item
    }
}
