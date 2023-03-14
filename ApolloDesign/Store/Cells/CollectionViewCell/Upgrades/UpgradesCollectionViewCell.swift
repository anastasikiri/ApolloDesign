//
//  UpgradesCollectionViewCell.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-09.
//

import UIKit

protocol StoreItemCellProtocol {
    func configure(_ model: StoreItemModel)
}

class UpgradesCollectionViewCell: UICollectionViewCell, StoreItemCellProtocol {
    
    @IBOutlet private weak var logo: UIImageView!
    @IBOutlet private weak var nameCategory: UILabel!
    @IBOutlet private weak var descriptionCategory: UILabel!
    @IBOutlet private weak var buyButtonOutlet: UIButton!
    @IBOutlet private weak var borderView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    func configure(_ model: StoreItemModel) {
        logo.image = UIImage(named: model.logoImageItem)
        nameCategory.text = model.nameItem
        descriptionCategory.text = model.descriptionItem
    }
    
    private func configureUI() {
        borderView.roundBorder(borderView)
        buyButtonOutlet.layer.cornerRadius = 14.5
        logo.layer.cornerRadius = 16
        
        nameCategory.font = UIFont.gibsonMedium(ofSize: 24)
        nameCategory.textColor = Theme.Colors.mainColor
        
        descriptionCategory.font = UIFont.gibsonBook(ofSize: 12)
        descriptionCategory.textColor = Theme.Colors.primaryGrayColor
        
        buyButtonOutlet.titleLabel?.font = UIFont.sfProDisplayBold(ofSize: 14)
        buyButtonOutlet.setTitleColor(Theme.Colors.mainColor, for: .normal)
        buyButtonOutlet.backgroundColor = Theme.Colors.buttonColor
    }
}
