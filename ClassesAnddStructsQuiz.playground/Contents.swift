//: Playground - noun: a place where people can play

import UIKit

class Giant {
    var name: String
    var weight: Double
    //let homePlanet: String
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}


let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

struct Alien {
    
    var name: String
    var height: Double
    //let homePlanet: String
    var homePlanet: String
    }

//let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

//classes use reference vs value and so these vars are pointers to the same value
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

print(edgar.name)

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles

charlesFromJupiter.homePlanet = "Jupiter"
//stuct values are copied and use values vs referece so each instance is unique
print(charlesFromJupiter.homePlanet)
print(charles.homePlanet)

struct BankAccount {
    
    var owner: String
    var balace: Double
    //structs are value properties and unlike classes its instances are immutable
    mutating func deposit (_ amount: Double){
        balace += amount
    }
    
    
    mutating func withdraw(_ amount: Double) {
        balace -= amount
    }
}
//structs are copied values
var joeAccount = BankAccount(owner: "Joe", balace: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

print(joeAccount.balace)
print(joeOtherAccount.balace)


class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

//class properties are passed by referece so each of these point to the same mem space which is mutable dispite let keyword

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

print(library2.tracks)
print(library1.tracks)