//
//  ContentItemMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class ContentItemMapper {
    
    static func make(entity: ContentEntity) -> ContentItem {
        var item = ContentItem()
        item.id = entity.id
        item.atualizadoEm = entity.atualizadoEm
        item.autores = entity.autores
        item.imagens = entity.imagens.map({ ImagemItemMapper.make(entity: $0)})
        item.informePublicitario = entity.informePublicitario
        item.publicadoEm = entity.publicadoEm
        item.section = SectionItemMapper.make(entity: entity.section)
        item.subTitulo = entity.subTitulo
        item.texto = entity.texto
        item.title = entity.title
        item.type = entity.type
        item.url = entity.url
        item.urlOriginal = entity.urlOriginal
        item.videos = entity.videos
        
        return item
    }
}
