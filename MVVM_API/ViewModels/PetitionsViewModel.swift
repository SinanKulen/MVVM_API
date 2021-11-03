//
//  PetitionsViewModel.swift
//  MVVM_API
//
//  Created by Sinan Kulen on 3.11.2021.
//

import Foundation

class PetitionsViewModel : NSObject {
    private var apiService : APIService!
    private(set) var empData : Petitions! {
        didSet {
            self.bindPetitionnViewModelToController()
        }
    }
    
    var bindPetitionnViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService = APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}
