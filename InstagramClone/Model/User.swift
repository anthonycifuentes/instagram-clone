//
//  User.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 25/07/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "anthonycifuentes", profileImageUrl: "profile-anthony", fullname: "Anthony Cifuentes", bio: "Hello world", email: "anthony@email.com"),
        .init(id: NSUUID().uuidString, username: "sophiawilliams", profileImageUrl: "profile", fullname: "Sophia Williams", bio: "Hello world", email: "sophia@email.com"),
        .init(id: NSUUID().uuidString, username: "xcode", profileImageUrl: nil, fullname: nil, bio: "Hello world", email: "x@email.com"),
        .init(id: NSUUID().uuidString, username: "dogdogdog", profileImageUrl: "dog", fullname: "John Dog", bio: "Wof!", email: "dog@email.com"),
    ]
}
