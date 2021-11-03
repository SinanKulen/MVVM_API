//
//  ViewController.swift
//  MVVM_API
//
//  Created by Sinan Kulen on 1.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVieww: UITableView!
    
    private var petitionsViewModel : PetitionsViewModel!
    
    private var dataSource : PetitionsTableViewDataSource<NewsTableViewCell,Petition>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUpdate()
    }
    
    func callToViewModelForUpdate() {
        self.petitionsViewModel = PetitionsViewModel()
        self.petitionsViewModel.bindPetitionnViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource() {
        self.dataSource = PetitionsTableViewDataSource(cellIdentifier: "NewsTableViewCell", items: self.petitionsViewModel.empData.results, configureCell: { (cell, evm) in
            cell.idLabel.text = String(evm.id)
            cell.titleLabel.text = evm.newsTitle
        })
        DispatchQueue.main.async {
            self.tableVieww.dataSource = self.dataSource
            self.tableVieww.reloadData()
        }
    }

}

