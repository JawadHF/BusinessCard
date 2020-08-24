//
//  User.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let title: String
    var email: String
    var companyUrl: String
    var address: String
    var phone: String
    
    var visit: Visit
}

extension User {
    static let users = [
        User(firstName: "Jawad", lastName: "Farooqui", title: "Freelancer", email: "jawad@winsights.in", companyUrl: "winsights.in", address: "", phone: "9986928806", visit: Visit(views: 50, events: 80, badges: 9, actions: 10, duration: 10)),
        User(firstName: "Haroon", lastName: "Rasheed", title: "Freelancer", email: "haroon@scalosphere.com", companyUrl: "scalosphere.com", address: "", phone: "9845199423", visit: Visit(views: 60, events: 90, badges: 7, actions: 12, duration: 10))
    ]
}
