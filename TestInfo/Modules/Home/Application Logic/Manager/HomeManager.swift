//
//  HomeManager.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

protocol HomeManagerInput {
    func fetch()
}
protocol HomeManagerOutput: class {
    func fetched(entitys:[ContentEntity])
}

class HomeManager: HomeManagerInput {
    
    weak var output: HomeManagerOutput?
    
    func fetch() {
        
        guard let data = loadJson(filename: "capa") else {return}
        
        self.output?.fetched(entitys: data)
    }
}
