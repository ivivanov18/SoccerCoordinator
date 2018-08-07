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
    "guardianNames": "Jim and Jan Smith"
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

let players = [player1, player2, player3, player4, player5, player6,
               player7, player8, player9, player10, player11, player12,
               player13, player14, player15, player16, player17, player18]

var experiencedPlayers = [[String: Any]]()
var unexperiencedPlayers = [[String: Any]]()


func separatePlayersInExpAndNotExperiencedGroups() -> Void{
    for player in players {
        if player["isExperienced"] as? Bool == true{
            experiencedPlayers.append(player)
        }else{
            unexperiencedPlayers.append(player)
        }
    }
}


