//
//  DetalhesViewModel.swift
//  DetalhesMoedas
//
//  Created by Leticia Sousa Siqueira on 26/01/21.
//

import UIKit
import CommonsService

class DataViewModel {
    
    var moedas: [Moeda] = [Moeda]()
    var reloadTableView: (()->())?
    var showError: (()->())?
    var showLoading: (()->())?
    var hideLoading: (()->())?
    
    
    private var cellViewModels: [DataListCellViewModel] = [DataListCellViewModel]() {
        didSet {
            self.reloadTableView?()
        }
    }
    
    var numberOfCells: Int {
        return cellViewModels.count
    }
    
    func getCellViewModel( at indexPath: IndexPath ) -> DataListCellViewModel {
        return cellViewModels[indexPath.row]
    }
    
    func createCell(moedas: [Moeda]){
        self.moedas = moedas
        var vms = [DataListCellViewModel]()
        for data in moedas {
            vms.append(DataListCellViewModel(siglaText: data.siglaMoeda))
        }
        cellViewModels = vms
    }
}

struct DataListCellViewModel {
    let siglaText: String
}


