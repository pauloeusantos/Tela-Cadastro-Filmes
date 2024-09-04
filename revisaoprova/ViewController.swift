//
//  ViewController.swift
//  revisaoprova
//
//  Created by COTEMIG on 14/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, formViewControllerProtocol {
    func criarfilme(filme: Filmes) {
        <#code#>
    }
    
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var listafilmes: [Filmes] = []
    let userDefaults = UserDefaults.standard
    let listafilmechave: String = "LISTAFILMECHAVE"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        do{
            if let listaData = userDefaults.data(forKey: listafilmechave){
                let listaFilmes = try JSONDecoder().decode([Filmes], from: listaData)
            }
        }catch{}
        tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listafilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filmeIndex = listafilmes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmes") as! filmeCell
        cell.setup(filme: filmeIndex)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let filmeSelecionado = listafilmes[indexPath.row]
        performSegue(withIdentifier: "detalhesFilme", sender: filmeSelecionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerDestino = segue.destination as? detalhesViewController{
            guard let filme = sender as? Filmes else { return }
            viewControllerDestino.setup(filme: filme)
        }
        if let viewControllerDestino = segue.destination as? formesViewController{
            viewControllerDestino.delegate = self
        }
        
        @IBAction func add(_ sender: Any) {
            performSegue(withIdentifier: "forms", sender: nil)
        }
        
        func criarfilme(filme: Filmes) {
            listafilmes.append(filme)
            tableview.reloadData()
            userDefaults.setValue(listafilmes, forKey: listafilmechave)
        }
    }
    
}
