//
//  formesViewController.swift
//  revisaoprova
//
//  Created by COTEMIG on 14/08/24.
//

import UIKit
protocol formesViewControllerProtocol {
    func criarfilme(filme: Filmes)
}

class formesViewController: UIViewController {
    
    @IBOutlet weak var txtlancamento: UITextField!
    @IBOutlet weak var txtnota: UITextField!
    @IBOutlet weak var txtgenero: UITextField!
    @IBOutlet weak var txtnome: UITextField!
    
    var delegate: formesViewControllerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func criar(_ sender: Any) {
        let filmeNovo = Filmes(nome: txtnome.text ?? "",
                               nota: txtnota.text ?? "",
                               genero: txtgenero.text ?? "",
                               lancamento: txtlancamento.text ?? ""
        )
        delegate?.criarfilme(filme: filmeNovo)
        navigationController?.popViewController(animated: true)
        
    }
    
}
