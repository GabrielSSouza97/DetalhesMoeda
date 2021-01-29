//
//  FavoritosViewController.swift
//  DetalhesMoedas
//
//  Created by Leticia Sousa Siqueira on 26/01/21.
//

import UIKit
import CommonsService

public class FavoritosViewController: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet weak var collectionViewFavoritos: UICollectionView!
    
    // MARK: - Variaveis
    
    let celulaFavorito = "celulaFavorito"
    let formataNumero: FormataNumero
    var moedaDetalhe: Moeda
    
    public init(moedaDetalhe: Moeda, formataNumero: FormataNumero = FormataNumero()) {
        self.moedaDetalhe = moedaDetalhe
        self.formataNumero = formataNumero
        super.init(nibName: "FavoritosViewController", bundle: Bundle(for: FavoritosViewController.self))
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        collectionViewFavoritos.reloadData()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func setupCollectionView() {
        collectionViewFavoritos.dataSource = self
        collectionViewFavoritos.delegate = self
        
        let nibCell = UINib(nibName: "FavoritosCollectionViewCell", bundle: Bundle(for: FavoritosViewController.self))
        collectionViewFavoritos.register(nibCell, forCellWithReuseIdentifier: celulaFavorito)
    }
    
}

extension FavoritosViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // commit

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2 - 20, height: collectionView.bounds.height/4)
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celula = collectionView.dequeueReusableCell(withReuseIdentifier: celulaFavorito, for: indexPath) as! FavoritosCollectionViewCell
        
//        celula.labelNomeMoeda.text = moedaDetalhe.name
//        celula.labelSiglaMoeda.text = moedaDetalhe.siglaMoeda
//        celula.labelValorMoeda.text = formataNumero.formatarCotacao(cotacao: (moedaDetalhe.priceUSD ?? 0))
        
        celula.layer.cornerRadius = 7
        celula.layer.borderWidth = 0.5

        return celula
    }

}
