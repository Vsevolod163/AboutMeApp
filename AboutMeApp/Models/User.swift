//
//  User.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 05.04.2023.
//

import Foundation

struct User {
    let userName: String!
    let password: String!
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Alexey",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let gitHub: String
    let photo: String
    let info: String
    
    var fullName: String {
        get {
            name + " " + surname
        }
    }
        
    static func getPerson() -> Person {
        Person(
            name: "Vsevolod",
            surname: "Lashin",
            dateOfBirth: "12.06.1995",
            gitHub: "Vsevolod163",
            photo: "myPhoto",
            info: """
                Hello! 😊
                
                My name is Vsevolod Lashin. I am 27 years old.
                I graduated from the Samara State University of Economics with a master's degree in world economics with honors.
                Now I am working as a Sales Manager for a company that sells automotive paints produced by the Dutch multinational company AkzoNobel. Several of my projects were the implementation of the Akzonobel software packages for various automotive workshops.
                I've always liked math and programming, so I decided to start studying it a year ago and I want to start working in this industry in the near future.
                My favourite hobbies are: programming, watching movies, listening to music. Also i love to play volleyball, basketball, table tennis.
                Looking forward to hearing from you! 😊
            """
        )
    }
}
