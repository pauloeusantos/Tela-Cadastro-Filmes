//
//  filmeCell.swift
//  revisaoprova
//
//  Created by COTEMIG on 14/08/24.
//

import UIKit

class filmeCell: UITableViewCell {

    @IBOutlet weak var datafilme: UILabel!
    @IBOutlet weak var generofilme: UILabel!
    @IBOutlet weak var notafilme: UILabel!
    @IBOutlet weak var nomefilme: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(filme: Filmes) {
        nomefilme.text = filme.nome
        notafilme.text = filme.nota
        generofilme.text = filme.genero
        datafilme.text = filme.lancamento
        
    }

   

}
