//  LevelSystem.swift
//  LevelUpKit
//
//  Created by Kseniia on 14.11.2024.
//

import Foundation

/// Manages the user's level and experience points.
public class LevelSystem {
    /// The current level of the user.
    public var currentLevel: Int
    /// The current experience points of the user.
    public var experiencePoints: Int
    /// A handler that is called when the user levels up.
    public var levelUpHandler: ((Int) -> Void)?

    /// Initializes a new LevelSystem with default values.
    public init() {
        self.currentLevel = 1
        self.experiencePoints = 0
    }

    /// Adds experience points to the user's total and checks for level up.
    /// - Parameter points: The number of experience points to add.
    public func addExperience(points: Int) {
        experiencePoints += points
        checkForLevelUp()
    }

    /// Checks if the user has enough experience points to level up.
    private func checkForLevelUp() {
        let pointsForNextLevel = currentLevel * 100
        if experiencePoints >= pointsForNextLevel {
            experiencePoints -= pointsForNextLevel
            currentLevel += 1
            levelUpHandler?(currentLevel)
            print("Congratulations! You've reached level \(currentLevel)!")
        }
    }
}
