//  AnimationHelper.swift
//  LevelUpKit
//
//  Created by Kseniia on 14.11.2024.
//

import UIKit

/// Helper class to handle animations for achievements and level-ups.
public class AnimationHelper {
    /// Displays an animation to indicate an achievement has been unlocked.
    /// - Parameters:
    ///   - view: The view to display the animation on.
    ///   - message: The message to be displayed.
    @MainActor
    public static func showAchievementAnimation(on view: UIView, message: String) {
        let label = UILabel()
        label.text = message
        label.textAlignment = .center
        label.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        label.textColor = .white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.frame = CGRect(x: 20, y: view.frame.height / 2 - 25, width: view.frame.width - 40, height: 50)

        view.addSubview(label)

        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseOut, animations: {
            label.alpha = 0
        }, completion: { _ in
            label.removeFromSuperview()
        })
    }

    /// Displays an animation to indicate a level-up has occurred.
    /// - Parameters:
    ///   - view: The view to display the animation on.
    ///   - level: The new level reached.
    @MainActor
    public static func showLevelUpAnimation(on view: UIView, level: Int) {
        let label = UILabel()
        label.text = "Level Up! You've reached level \(level)!"
        label.textAlignment = .center
        label.backgroundColor = UIColor.systemGreen.withAlphaComponent(0.8)
        label.textColor = .white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.frame = CGRect(x: 20, y: view.frame.height / 2 - 25, width: view.frame.width - 40, height: 50)

        view.addSubview(label)

        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseOut, animations: {
            label.alpha = 0
        }, completion: { _ in
            label.removeFromSuperview()
        })
    }
}
