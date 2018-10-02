//
//  DetailsViewController.swift
//  TestInfo
//
//  Created by Thiago Santos on 01/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import UIKit
import SDWebImage


class DetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var textoLabel: UILabel!
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    
    @IBOutlet weak var legendLabel: UILabel!
    @IBOutlet weak var displayAuthor: UILabel!
    
    var presenter: DetailsPresenterInput?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarBackButton()
        self.presenter?.viewdidLoad()

    }

}
extension DetailsViewController: DetailsPresenterOutput{
    
    func hiddenImage() {
        self.thumbImageView.image = nil
    }
    
    func author() {
        self.displayAuthor.text = nil
    }

    func fetched(display: DestailsDisplay) {
        self.titleLabel.text = display.title
        self.subtitleLabel.text = display.subTitle
        self.navigationItem.title = display.type
        self.authorLabel.text = display.autores
        self.dateLabel.text = display.startDate
        self.textoLabel.text = display.texto
        self.thumbImageView.sd_setImage(with: URL(string: display.image), placeholderImage: UIImage(named: "placeholder.png"))
        self.legendLabel.text = display.legendFoto
    }
    
    
}
