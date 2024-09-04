//
//  detalhesViewController.swift
//  revisaoprova
//
//  Created by COTEMIG on 14/08/24.
//

import UIKit

class detalhesViewController: UIViewController {

    @IBOutlet weak var lancamentolbl: UILabel!
    @IBOutlet weak var notalbl: UILabel!
    @IBOutlet weak var generolbl: UILabel!
    @IBOutlet weak var nomelbl: UILabel!
    
    var detalhesFilme: Filmes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
       
    }
    
    func setup(filme: Filmes){
        detalhesFilme = filme
    }
    
    func setupLabels(){
        nomelbl.text = detalhesFilme?.nome
        generolbl.text = detalhesFilme?.genero
        notalbl.text = detalhesFilme?.nota
        lancamentolbl.text = detalhesFilme?.lancamento
    }


}
