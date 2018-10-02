//
//  HomePresenter.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import Foundation

protocol HomePresenterInput {
    func viewDidload()
    func didSeleted(item: ContentItem)
}
protocol HomePresenterOutput: class {
    func fetched(item: [ContentItem])
}

class HomePresenter: HomePresenterInput {

    var interactor: HomeInteractorInput
    
    weak var output:HomePresenterOutput?
    
    var wireframe: Homewireframe
    
    init(interactor: HomeInteractorInput, wireframe: Homewireframe) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
    
    func viewDidload() {
        self.interactor.fetch()
    }
    
    func didSeleted(item: ContentItem) {
       self.wireframe.showDetails(item: item)
    }
}

extension HomePresenter: HomeInteractorOutput{
    
    func fetched(item: [ContentItem]) {
        self.output?.fetched(item: item)
    }
}

