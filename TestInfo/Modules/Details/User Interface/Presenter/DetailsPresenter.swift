//
//  DetailsPresenter.swift
//  TestInfo
//
//  Created by Thiago Santos on 29/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

protocol DetailsPresenterInput {
  func viewdidLoad()
}

protocol DetailsPresenterOutput:class {
    func fetched(display: DestailsDisplay)
    func hiddenImage()
    func author()
}

class DetailsPresenter: DetailsPresenterInput {
    
    var item: ContentItem
    weak var output:DetailsPresenterOutput?
    
    init(item: ContentItem) {
        self.item = item
    }
    
    func viewdidLoad() {
        self.output?.fetched(display: DetailsDisplayMapper.make(item: self.item))
        if item.imagens.first == nil {
            self.output?.hiddenImage()
        }
        if item.autores.first == nil {
            self.output?.author()
        }
    }
    
    
}
