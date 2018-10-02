//
//  ContentItem.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

struct ContentItem {
    
    var autores:[String] = [String]()
    var informePublicitario:Bool = false
    var subTitulo:String = ""
    var texto: String = ""
    var videos:String = ""
    var atualizadoEm:Date = Date()
    var publicadoEm:Date = Date()
    var id:Int = 0
    var section = SectionItem()
    var type:Type = .matter
    var title: String = ""
    var url:String = ""
    var urlOriginal:String = ""
    var imagens:[ImagemItem] = [ImagemItem]()
}
