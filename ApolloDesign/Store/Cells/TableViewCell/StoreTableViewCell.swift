//
//  StoreTableViewCell.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-10.
//

import UIKit

class StoreTableViewCell: UITableViewCell {
    enum RowType: Int {
        case careProtect
        case accessories
        case upgrades
        
        var cellType: UICollectionViewCell.Type {
            switch self {
            case .careProtect:
                return CareProtectCollectionViewCell.self
            case .accessories:
                return AccessoriesCollectionViewCell.self
            case .upgrades:
                return UpgradesCollectionViewCell.self
            }
        }
    }

    @IBOutlet private weak var nameCategory: UILabel!
    @IBOutlet private weak var descriptionCategory: UILabel!
    @IBOutlet private weak var seeAllOutlet: UIButton!
    @IBOutlet private weak var collectionView: UICollectionView!
        
    private var items: [StoreItemModel] = []
    private var rowType = RowType.careProtect
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    // MARK: - Preparations
    private func registerCell(reuseId: String) {
        collectionView.register(UINib(nibName: reuseId, bundle: nil),
                                     forCellWithReuseIdentifier: reuseId)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func configureUI() {
        nameCategory.font = UIFont.gibsonMedium(ofSize: 20)
        nameCategory.textColor = Theme.Colors.mainColor
        
        descriptionCategory.font = UIFont.gibsonRegular(ofSize: 17)
        descriptionCategory.textColor = Theme.Colors.primaryGrayColor
        
        seeAllOutlet.titleLabel?.font = UIFont.gibsonRegular(ofSize: 16)
        seeAllOutlet.setTitleColor(Theme.Colors.categButtonTextColor, for: .normal)
    }
    
    func configure(with category: StoreCategoryModel, rowType: RowType) {
        nameCategory.text = category.nameCategory
        descriptionCategory.text = category.descriptionCategory

        self.rowType = rowType
        self.items = category.items

        registerCell(reuseId: String(describing: rowType.cellType))
    }
    
    @IBAction func seeAllButton(_ sender: UIButton) {
        // tap logic here
    }
}

// MARK: - UICollectionViewDelegate funcs
extension StoreTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch rowType {
        case .careProtect:
            return CGSize(width: 242, height: 329)
        case .accessories:
            return CGSize(width: 242, height: 337)
        case .upgrades:
            return CGSize(width: collectionView.frame.width, height: 380)
        }
    }
}

extension StoreTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let reuseId = String(describing: rowType.cellType)

        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: reuseId,
            for: indexPath) as? UICollectionViewCell & StoreItemCellProtocol else { fatalError() }

        cell.configure(items[indexPath.row])
        return cell
    }
}
