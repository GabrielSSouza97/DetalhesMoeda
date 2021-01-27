//
//  FavoritosViewController.swift
//  DetalhesMoedas
//
//  Created by Leticia Sousa Siqueira on 26/01/21.
//

import UIKit
import CommonsService

public class FavoritosViewController: UIViewController {
    
    //@IBOutlet weak var siglaMoeda: UILabel!
    @IBOutlet weak var collectionViewFavoritos: UICollectionView!
    let celulaFavorito = "celulaFavorito"
    
    public init() {
        super.init(nibName: "FavoritosViewController", bundle: Bundle(for: FavoritosViewController.self))
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibCell = UINib(nibName: celulaFavorito, bundle: nil)
        collectionViewFavoritos.register(nibCell, forCellWithReuseIdentifier: celulaFavorito)
    }
    
}

//extension FavoritosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    public func numberOfSectionsInCollectionView(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let celula = collectionView.dequeueReusableCell(withReuseIdentifier: celulaFavorito, for: indexPath) as! FavoritosCollectionViewCell
//        celula.labelNomeMoeda.text = "Nome da Moeda"
//        celula.labelSiglaMoeda.text = "SGL"
//        celula.labelValorMoeda.text = "R$"
//
//        return celula
//    }
//
//}
