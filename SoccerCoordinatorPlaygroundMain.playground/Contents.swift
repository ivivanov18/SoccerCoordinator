//: Playground - noun: a place where people can play
//  Created by ivan ivanov on 07/08/2018.
//  Copyright © 2018 Treehouse. All rights reserved.

import UIKit

let player1 : [String: Any] = [
    "name": "Joe Smith",
    "height": 42,
    "isExperienced": true,
    "guardianNames": "Jim and Jan Smith"
]

let player2 : [String: Any] = [
    "name": "Jill Tanner",
    "height": 36,
    "isExperienced": true,
    "guardianNames": "Clara Tanner"
]

let player3 : [String: Any] = [
    "name": "Bill Bon",
    "height": 43,
    "isExperienced": true,
    "guardianNames": "Sara and Jenny Bon"
]

let player4 : [String: Any] = [
    "name": "Eva Gordon",
    "height": 45,
    "isExperienced": false,
    "guardianNames": "Wendy and Mike Gordon"
]

let player5 : [String: Any] = [
    "name": "Matt Gill",
    "height": 40,
    "isExperienced": false,
    "guardianNames": "Charles and Sylvia Gill"
]

let player6 : [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41,
    "isExperienced": false,
    "guardianNames": "Bill and Hillary Stein"
]

let player7 : [String: Any] = [
    "name": "Sammy Adams",
    "height": 45,
    "isExperienced": false,
    "guardianNames": "Jeff Adams"
]

let player8 : [String: Any] = [
    "name": "Karl Saygan",
    "height": 42,
    "isExperienced": true,
    "guardianNames": "Heather Bledsoe"
]

let player9 : [String: Any] = [
    "name": "Suzane Greenberg",
    "height": 44,
    "isExperienced": true,
    "guardianNames": "Henrietta Dumas"
]

let player10 : [String: Any] = [
    "name": "Sal Dali",
    "height": 41,
    "isExperienced": false,
    "guardianNames": "Gala Dali"
]

let player11 : [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39,
    "isExperienced": false,
    "guardianNames": "Sam and Elaine Kavalier"
]

let player12 : [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44,
    "isExperienced": false,
    "guardianNames": "Aaron and Jill Finkelstein"
]

let player13 : [String: Any] = [
    "name": "Diego Soto",
    "height": 41,
    "isExperienced": true,
    "guardianNames": "Robin and Sarika Soto"
]

let player14 : [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47,
    "isExperienced": false,
    "guardianNames": "David and Jamie Alaska"
]

let player15 : [String: Any] = [
    "name": "Arnold Willis",
    "height": 43,
    "isExperienced": false,
    "guardianNames": "Claire Willis"
]

let player16 : [String: Any] = [
    "name": "Phillip Helm",
    "height": 44,
    "isExperienced": true,
    "guardianNames": "Thomas Helm and Eva Jones"
]

let player17 : [String: Any] = [
    "name": "Les Clay",
    "height": 42,
    "isExperienced": true,
    "guardianNames": "Wynonna Brown"
]

let player18 : [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45,
    "isExperienced": true,
    "guardianNames": "Hyman and Rachel Krustofski"
]

let availablePlayers = [player1, player2, player3, player4, player5, player6,
               player7, player8, player9, player10, player11, player12,
               player13, player14, player15, player16, player17, player18]

var experiencedPlayers = [[String: Any]]()
var inexperiencedPlayers = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamSharks = [[String: Any]]()
var teamRaptors = [[String: Any]]()
var leagueTeams : [String: [[String: Any]]] =
                    ["Dragons":teamDragons, "Sharks": teamSharks, "Raptors": teamRaptors]
var letters = [String: String]()


/// Function that separates the players evenly by experienced and unexperienced
/// into the teams of the league
func separatePlayersInExpAndNotExperiencedGroups(from availablePlayers: [[String: Any]]) -> Void{
    for player in availablePlayers{
        if player["isExperienced"] as? Bool == true{
            experiencedPlayers.append(player)
        }else{
            inexperiencedPlayers.append(player)
        }
    }
}

/// Function that add the experienced players to the teams of the league
func addExperiencedPlayersToLeagueTeams() -> Void{

    let lengthLeague = leagueTeams.count

    for i in 0..<experiencedPlayers.count{
        let playerToAdd = experiencedPlayers[i]
        let modulo = i % lengthLeague

        if modulo == 0{
            teamDragons.append(playerToAdd)
        }else if modulo == 1{
            teamSharks.append(playerToAdd)
        }else{
            teamRaptors.append(playerToAdd)
        }
    }
    
    leagueTeams = ["Dragons":teamDragons, "Sharks": teamSharks, "Raptors": teamRaptors]

}


/// Function that add the unexperienced players to the teams of the league
func addInexperiencedPlayersToLeagueTeams() -> Void{

    let lengthLeague = leagueTeams.count

    for i in 0..<inexperiencedPlayers.count{
        let playerToAdd = inexperiencedPlayers[i]
        let modulo = i % lengthLeague

        if modulo == 0{
            teamDragons.append(playerToAdd)
        }else if modulo == 1{
            teamSharks.append(playerToAdd)
        }else{
            teamRaptors.append(playerToAdd)
        }
    }
    
    leagueTeams = ["Dragons" : teamDragons, "Sharks" : teamSharks, "Raptors" : teamRaptors]
}

/// Function that generates the letter
func generateLetters() -> Void{
    for (teamName, team) in leagueTeams {
        for player in team {
            let guardianNames = player["guardianNames"]
            let playerName = player["name"]
            let letter: String = """
            Dear \(guardianNames ?? "nil"),
            \(playerName  ?? "nil") will attend the first practice of the league on Saturday 18th August with his team, the \(String(describing: teamName)).
            """
            letters["\(playerName)"] =  letter
        }
    }
}

/// Prints the content of the letters
func printLetters() -> Void {
    for (name, letter) in letters{
        print(letter)
    }
}

/// MAIN Function
func main() -> Void{

    separatePlayersInExpAndNotExperiencedGroups(from: availablePlayers)
    addExperiencedPlayersToLeagueTeams()
    addInexperiencedPlayersToLeagueTeams()
    
    generateLetters()
    printLetters()
}


main()




