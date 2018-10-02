//
//  DetailsDisplayMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 01/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

class DetailsDisplayMapper {
    
    static func make(item: ContentItem) -> DestailsDisplay {
        var display = DestailsDisplay()
        display.autores = item.autores.first ?? ""
        display.title = item.title
        display.subTitle = item.subTitulo
        display.type = item.section.type.rawValue.uppercased()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.locale = Locale.init(identifier: "pt-br")
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        let resultTime = formatter.string(from: item.publicadoEm)
        display.startDate = resultTime
        display.texto = item.texto
        
        if let image = item.imagens.first {
            display.image = image.url
            display.legendFoto = "\(image.legend). Fonte:\(image.source)"
        }
        return display
    }
    
}
