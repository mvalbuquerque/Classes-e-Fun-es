//: Playground - noun: a place where people can play

import UIKit

var str = "Criando uma Classe"



class Pessoa {
    var nome = ""
    var peso = 0.00
    var altura = 0.0
    
    func CalculaIMC() -> Double {
    
        let imc = self.peso / (self.altura * self.altura)
        
        return imc
    
    }
    
    
    func RetornaNomeIMC() -> String {
    return "O IMC DE \(self.nome) é \(self.CalculaIMC())"
    
    }
    
    func RetornaDescricaoDaClasse() -> String{
    return "Este é um objeto da classe Pessoa"
    
    }
    
    
}

// Criando um objeto da classe Pessoa
var pessoa1 = Pessoa()

pessoa1.nome = "Fulano de Tal"
pessoa1.peso = 70.0
pessoa1.altura = 1.70

pessoa1.CalculaIMC()
pessoa1.RetornaNomeIMC()
pessoa1.RetornaDescricaoDaClasse()

// Criando uma subclasse que herda os atributos e funções da superclasse

class Personagem: Pessoa {
    var nomeDoFilme = ""
 // var nome = ""
    var ator = ""
    
    func RetornaNomePersonagemFilme() -> String{
    return "O personagem \(ator) é do filme \(nomeDoFilme)"
    
    }
    
    override func RetornaDescricaoDaClasse() -> String {
        return "Este é um objeto da subclasse Personagem"
    }
    
    
}

var personagem1 = Personagem()
personagem1.ator = "Marcos Vinicius"
personagem1.nomeDoFilme = "Vingador"

personagem1.RetornaNomePersonagemFilme()
personagem1.RetornaDescricaoDaClasse()
