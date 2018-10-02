//
//  APIModelMapper.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
import SwiftyJSON

class APIModelMapper {
    
    static func make(json:JSON) ->APIModel {
        let model = APIModel()
        model.contents = json.arrayValue.first!["conteudos"].arrayValue.map({ContentEntityMapper.make(json: $0) })
        model.product = json.arrayValue.first!["produto"].stringValue
        return model
    }
}
