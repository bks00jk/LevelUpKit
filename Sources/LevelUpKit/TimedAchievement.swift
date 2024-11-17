//  TimedAchievement.swift
//  LevelUpKit
//
//  Created by Kseniia on 17.11.2024.
//

/// Represents an achievement that must be completed within a specific time period.
public class TimedAchievement: Achievement {
    /// The period in which the achievement must be completed.
    public enum TimePeriod {
        case daily, weekly
    }
    
    /// The time period associated with this achievement.
    public let period: TimePeriod
    private var completedTasks: Int = 0
    /// The target number of tasks required to unlock the achievement.
    public let target: Int
    
    /// Initializes a new TimedAchievement with the provided details.
    /// - Parameters:
    ///   - title: The title of the achievement.
    ///   - description: A brief description of the achievement.
    ///   - iconName: The name of the icon to represent the achievement.
    ///   - points: The number of points awarded for unlocking the achievement.
    ///   - period: The time period in which the achievement must be completed.
    ///   - target: The number of tasks required to unlock the achievement.
    public init(title: String, description: String, iconName: String, points: Int, period: TimePeriod, target: Int) {
        self.period = period
        self.target = target
        super.init(title: title, description: description, iconName: iconName, points: points)
    }
    
    /// Records a completed task towards unlocking the timed achievement.
    public func completeTask() {
        completedTasks += 1
        if completedTasks >= target {
            unlock()
            print("Timed Achievement unlocked: \(title)")
        }
    }
    
    /// Resets the progress for the timed achievement.
    public func reset() {
        completedTasks = 0
    }
}
