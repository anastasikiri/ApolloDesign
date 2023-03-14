//
//  CareProtectCollectionViewCell.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-09.
//

import UIKit

class CareProtectCollectionViewCell: UICollectionViewCell, StoreItemCellProtocol {

    @IBOutlet private weak var logo: UIImageView!
    @IBOutlet private weak var nameCategory: UILabel!
    @IBOutlet private weak var descriptionCategory: UILabel!
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
        logo.addBottomBorderWithColor(color: Theme.Colors.borderColor,
                                      width: 1)
        nameCategory.font = UIFont.gibsonMedium(ofSize: 16)
        nameCategory.textColor = Theme.Colors.mainColor
        
        descriptionCategory.font = UIFont.gibsonRegular(ofSize: 14)
        descriptionCategory.textColor = Theme.Colors.secondaryGrayColor
    }
}
