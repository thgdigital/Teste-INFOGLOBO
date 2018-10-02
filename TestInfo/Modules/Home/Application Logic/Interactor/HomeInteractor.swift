//
//  HomeInteractor.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation
protocol HomeInteractorInput {
    func fetch()
}
protocol HomeInteractorOutput:class {
    func fetched(item: [ContentItem])
}
class HomeInteractor: HomeInteractorInput {
    
    var manager:HomeManagerInput
    
    weak var output:HomeInteractorOutput?
    
    init(manager: HomeManagerInput) {
        self.manager = manager
    }
    
    func fetch() {
        manager.fetch()
    }
}

extension HomeInteractor: HomeManagerOutput {
    
    func fetched(entitys: [ContentEntity]) {
        output?.fetched(item: entitys.map({ ContentItemMapper.make(entity: $0)}))
    }
    
    
}
