//
//  ImagemItemMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class ImagemItemMapper {
    
    static func make(entity: ImagemEntity) ->ImagemItem{
        var item = ImagemItem()
        item.author = entity.author
        item.legend = entity.legend
        item.source = entity.source
        item.url = entity.url
        
        return item
    }
}
