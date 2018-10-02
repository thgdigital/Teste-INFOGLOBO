//
//  SectionEntity.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
enum SectionType:String{
    case brasil
    case economia
    case sociedade
    case etc
    init(type: String){
        switch type.lowercased() {
        case "brasil":
            self = .brasil
        case "economia":
            self = .economia
        case "sociedade":
            self = .sociedade
        default:
            self = .etc
        }
    }
}

class SectionEntity: NSObject {
    var name:String = ""
    var url:String = ""
    var type:SectionType = .etc
}
