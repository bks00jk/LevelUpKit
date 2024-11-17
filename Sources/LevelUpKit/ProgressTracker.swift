//  ProgressTracker.swift
//  LevelUpKit
//
//  Created by Kseniia on 14.11.2024.
//

import Foundation

/// Tracks progress towards a specific goal.
public class ProgressTracker {
    /// The goal to be achieved.
    public var goal: Int
    /// The current progress towards the goal.
    public var currentProgress: Int

    /// Initializes a new ProgressTracker with a goal.
    /// - Parameter goal: The goal to be achieved.
    public init(goal: Int) {
        self.goal = goal
        self.currentProgress = 0
    }

    /// Adds progress towards the goal.
    /// - Parameter points: The number of points to add.
    public func addProgress(points: Int) {
        currentProgress += points
        if currentProgress >= goal {
            currentProgress = goal
            print("Goal reached!")
        }
    }

    /// Calculates the percentage of progress made towards the goal.
    /// - Returns: The progress percentage as a double.
    public func progressPercentage() -> Double {
        return (Double(currentProgress) / Double(goal)) * 100
    }

    /// Resets the progress to zero.
    public func resetProgress() {
        currentProgress = 0
    }
}

