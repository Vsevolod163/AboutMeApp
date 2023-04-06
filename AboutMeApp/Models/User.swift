//
//  User.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 05.04.2023.
//

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
    
    static func getPerson() -> Person {
        Person(
            name: "Vsevolod",
            surname: "Lashin",
            dateOfBirth: "12.06.1995",
            gitHub: "Vsevolod163",
            photo: "myPhoto"
        )
    }
}
