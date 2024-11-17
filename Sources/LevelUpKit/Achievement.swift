//  Achievement.swift
//  LevelUpKit
//
//  Created by Kseniia on 14.11.2024.
//

import Foundation

/// Represents an achievement that users can unlock.
public class Achievement {
    /// Title of the achievement.
    public let title: String
    /// Description of the achievement.
    public let description: String
    /// Name of the icon representing the achievement.
    public let iconName: String
    /// Indicates whether the achievement has been unlocked.
    public var isUnlocked: Bool
    /// Number of points awarded for unlocking the achievement.
    public var points: Int

    /// Initializes a new Achievement with the provided details.
    /// - Parameters:
    ///   - title: The title of the achievement.
    ///   - description: A brief description of the achievement.
    ///   - iconName: The name of the icon to represent the achievement.
    ///   - points: The number of points awarded for unlocking the achievement.
    public init(title: String, description: String, iconName: String, points: Int) {
        self.title = title
        self.description = description
        self.iconName = iconName
        self.isUnlocked = false
        self.points = points
    }

    /// Unlocks the achievement.
    public func unlock() {
        self.isUnlocked = true
    }

    /// Displays information about the achievement.
    /// - Returns: A string representation of the achievement's title and description.
    public func displayInfo() -> String {
        return "Achievement: \(title) - \(description)"
    }
}
