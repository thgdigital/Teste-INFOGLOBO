//
//  ImagemEntityMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import SwiftyJSON
class ImagemEntityMapper {
    
    static func make(json: JSON)-> ImagemEntity {
        let imagem = ImagemEntity()
        imagem.author = json["autor"].stringValue
        imagem.legend = json["legenda"].stringValue
        imagem.source = json["fonte"].stringValue
        imagem.url = json["url"].stringValue
        
        return imagem
    }
}

