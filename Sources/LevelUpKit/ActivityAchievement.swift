//  ActivityAchievement.swift
//  LevelUpKit
//
//  Created by Kseniia on 17.11.2024.
//

/// Represents an achievement that is unlocked by performing specific activities.
public class ActivityAchievement: Achievement {
    /// Types of activities that can unlock the achievement.
    public enum ActivityType {
        case consecutiveLogin, fastCompletion
    }
    
    /// The type of activity associated with this achievement.
    public let activityType: ActivityType
    private var consecutiveLogins: Int = 0
    private var fastCompletions: Int = 0
    private let target: Int
    
    /// Initializes a new ActivityAchievement with the provided details.
    /// - Parameters:
    ///   - title: The title of the achievement.
    ///   - description: A brief description of the achievement.
    ///   - iconName: The name of the icon to represent the achievement.
    ///   - points: The number of points awarded for unlocking the achievement.
    ///   - activityType: The type of activity associated with this achievement.
    ///   - target: The number of activities required to unlock the achievement.
    public init(title: String, description: String, iconName: String, points: Int, activityType: ActivityType, target: Int) {
        self.activityType = activityType
        self.target = target
        super.init(title: title, description: description, iconName: iconName, points: points)
    }
    
    /// Records a login activity to check for consecutive login achievement.
    public func recordLogin() {
        if activityType == .consecutiveLogin {
            consecutiveLogins += 1
            if consecutiveLogins >= target {
                unlock()
                print("Achievement unlocked: \(title)")
            }
        }
    }
    
    /// Records a fast completion activity to check for fast completion achievement.
    public func recordFastCompletion() {
        if activityType == .fastCompletion {
            fastCompletions += 1
            if fastCompletions >= target {
                unlock()
                print("Achievement unlocked: \(title)")
            }
        }
    }
}
