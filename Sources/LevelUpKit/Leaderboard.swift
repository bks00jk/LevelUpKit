//  Leaderboard.swift
//  LevelUpKit
//
//  Created by Kseniia on 14.11.2024.
//

import Foundation

/// Manages a leaderboard of users and their points.
public class Leaderboard {
    private var users: [String: Int] = [:]

    /// Initializes a new, empty leaderboard.
    public init() {}

    /// Adds a user to the leaderboard.
    /// - Parameter username: The username of the user to be added.
    public func addUser(username: String) {
        if users[username] == nil {
            users[username] = 0
        }
    }

    /// Adds points to a user's total.
    /// - Parameters:
    ///   - username: The username of the user.
    ///   - points: The number of points to add.
    public func addPointsToUser(username: String, points: Int) {
        if let _ = users[username] {
            users[username]! += points
        }
    }

    /// Retrieves the top users from the leaderboard.
    /// - Parameter limit: The maximum number of users to retrieve.
    /// - Returns: An array of tuples containing usernames and their points.
    public func getTopUsers(limit: Int = 10) -> [(String, Int)] {
        return Array(users.sorted { $0.value > $1.value }.prefix(limit))
    }

    /// Gets the rank of a specific user.
    /// - Parameter username: The username of the user.
    /// - Returns: The rank of the user, or nil if the user is not found.
    public func getRank(for username: String) -> Int? {
        let sortedUsers = users.sorted { $0.value > $1.value }
        return sortedUsers.firstIndex { $0.key == username }?.advanced(by: 1)
    }
}

