//
//  SectionEntityMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import SwiftyJSON

class SectionEntityMapper {
    static func make(json: JSON) -> SectionEntity{
        let section = SectionEntity()
        section.name = json["nome"].stringValue
        section.url = json["url"].stringValue
        section.type = SectionType(type: json["nome"].stringValue)
        
        return section
    }
}
