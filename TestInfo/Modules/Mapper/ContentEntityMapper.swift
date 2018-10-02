//
//  ContentEntityMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import SwiftyJSON

class ContentEntityMapper {
    
    static func make(json: JSON)-> ContentEntity {
        
        let content =  ContentEntity()
        content.autores = json["autores"].arrayValue.map({$0.stringValue})

        content.id = json["id"].intValue
        content.subTitulo = json["subTitulo"].stringValue
        content.texto = json["texto"].stringValue
        content.title = json["titulo"].stringValue
        content.informePublicitario = json["informePublicitario"].boolValue
        content.type = Type(type: json["tipo"].stringValue)
        content.url = json["url"].stringValue
        content.urlOriginal = json["urlOriginal"].stringValue
        content.section = SectionEntityMapper.make(json: json["secao"])
        content.imagens = json["imagens"].arrayValue.map({ImagemEntityMapper.make(json: $0)})
        
        let formatter = Foundation.DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.timeZone = TimeZone(abbreviation: "UTC-3")
        content.atualizadoEm  = formatter.date(from: json["atualizadoEm"].stringValue)!
        content.publicadoEm = formatter.date(from: json["publicadoEm"].stringValue)!

        
        return content
        
    }
}
