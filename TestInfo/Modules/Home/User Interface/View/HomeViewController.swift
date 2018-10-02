//
//  HomeViewController.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var presenter: HomePresenterInput?
    
    var items: [ContentItem] = [ContentItem]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter?.viewDidload()
        self.setup()
    }
    
    fileprivate func setup(){
        
        self.navigationItem.title = "O GLOBO"
        tableView.rowHeight = 120
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        
        let nibThumb = UINib(nibName: ThumbTableviewCell.defaultReuseIdentifier, bundle: nil)
        
        let nibFeture = UINib(nibName: FeaturedTableViewCell.defaultReuseIdentifier, bundle: nil)
        
        tableView.register(nibThumb, forCellReuseIdentifier: ThumbTableviewCell.defaultReuseIdentifier)
        
        tableView.register(nibFeture, forCellReuseIdentifier: FeaturedTableViewCell.defaultReuseIdentifier)
    }
    
    
}
extension HomeViewController: HomePresenterOutput{
    
    func fetched(item: [ContentItem]) {
        self.items = item
        self.tableView.reloadData()
    }
    
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let display = FeatureDisplayMapper.make(item: self.items[indexPath.row])
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedTableViewCell.defaultReuseIdentifier, for: indexPath) as! FeaturedTableViewCell
            
            cell.setup(display: display)
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ThumbTableviewCell.defaultReuseIdentifier, for: indexPath) as! ThumbTableviewCell
        
        cell.setup(display: display)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 230
        }else{
            return 120
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSeleted(item: self.items[indexPath.row])
    }
    
}
