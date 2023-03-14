//
//  ViewController.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-07.
//

import UIKit

class StoreViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    private var viewModel: StoreViewModelProtocol = StoreViewModel(api: APIHelper())    
    private var storeCategoryData = [StoreCategoryModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        configureUI()
        registerCell(reuseId: String(describing: StoreTableViewCell.self))
        storeCategoryData = viewModel.loadDataStoreCategory()
    }
    
    // MARK: - Preparations
    private func registerCell(reuseId: String) {
        tableView.register(UINib(nibName: reuseId, bundle: nil),
                           forCellReuseIdentifier: reuseId)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func configureUI() {
        titleLabel.font = UIFont.nimbusSansBold(ofSize: 24)
        titleLabel.textColor = Theme.Colors.mainColor
    }
}

// MARK: - UITableViewDelegate funcs
extension StoreViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 449
        case 1:
            return 457
        default:
            return 500
        }
    }
}

// MARK: - UITableViewDataSource funcs
extension StoreViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storeCategoryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId = String(describing: StoreTableViewCell.self)
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: reuseId,
            for: indexPath) as? StoreTableViewCell,
              let rowType = StoreTableViewCell.RowType(rawValue: indexPath.row) else { fatalError() }
        
        cell.configure(with: storeCategoryData[indexPath.row], rowType: rowType)
                
        return cell
    }
}
