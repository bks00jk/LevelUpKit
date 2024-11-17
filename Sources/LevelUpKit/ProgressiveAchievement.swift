//  ProgressiveAchievement.swift
//  LevelUpKit
//
//  Created by Kseniia on 17.11.2024.
//

/// Represents an achievement that tracks progress over time.
public class ProgressiveAchievement: Achievement {
    /// The current progress towards unlocking the achievement.
    public var currentProgress: Int
    /// The goal required to unlock the achievement.
    public let goal: Int
    /// Milestones to be achieved before reaching the goal.
    public let milestones: [Int]
    
    /// Initializes a new ProgressiveAchievement with the provided details.
    /// - Parameters:
    ///   - title: The title of the achievement.
    ///   - description: A brief description of the achievement.
    ///   - iconName: The name of the icon to represent the achievement.
    ///   - points: The number of points awarded for unlocking the achievement.
    ///   - goal: The goal required to unlock the achievement.
    ///   - milestones: The milestones to track progress towards the goal.
    public init(title: String, description: String, iconName: String, points: Int, goal: Int, milestones: [Int]) {
        self.currentProgress = 0
        self.goal = goal
        self.milestones = milestones
        super.init(title: title, description: description, iconName: iconName, points: points)
    }
    
    /// Updates the current progress towards unlocking the achievement.
    /// - Parameter amount: The amount of progress to add.
    public func updateProgress(by amount: Int) {
        currentProgress += amount
        for milestone in milestones {
            if currentProgress >= milestone && !isUnlocked {
                unlock()
                print("Milestone reached: \(milestone) for \(title)")
            }
        }
        if currentProgress >= goal {
            unlock()
            print("Achievement unlocked: \(title)")
        }
    }
}
