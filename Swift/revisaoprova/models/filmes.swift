import Foundation

struct Filmes: Encodable,Decodable {
    let nome: String
    let nota: String
    let genero: String
    let lancamento: String
}
