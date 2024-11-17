# LevelUpKit

LevelUpKit is a Swift framework for adding gamification elements such as achievements, leaderboards, and progress tracking to your app. It aims to enhance user engagement by making the app more interactive and rewarding.

## Features
- **Achievements**: Create, manage, and display user achievements.
- **Activity Achievements**: Track specific user activities like consecutive logins or fast task completions.
- **Leaderboard**: Track user scores and display top users.
- **Progressive Achievements**: Track progress towards a long-term goal with milestones.
- **Timed Achievements**: Create achievements that must be completed within a specific time frame.
- **Progress Tracking**: Track user progress towards goals and provide feedback on their achievements.
- **Animations**: Show level-up and achievement animations for improved user experience.

## Installation

### Swift Package Manager
To integrate LevelUpKit using Swift Package Manager:
1. In Xcode, go to **File > Add Packages**.
2. Enter the GitHub repository URL: `https://github.com/bks00jk/LevelUpKit`.
3. Select the version and add it to your project.

### CocoaPods
To integrate LevelUpKit using CocoaPods, add the following line to your `Podfile`:
```ruby
pod 'LevelUpKit', :git => 'https://github.com/bks00jk/LevelUpKit'
```

## Usage

### Basic Usage Example
Here is a quick guide on how to use LevelUpKit in your project.

#### Achievements
To create and unlock an achievement:
```swift
import LevelUpKit

let achievement = Achievement(title: "First Steps", description: "Complete the first task", iconName: "first_steps", points: 10)
achievement.unlock()
print(achievement.displayInfo())
```

#### Activity Achievements
To track user activities like consecutive logins:
```swift
let activityAchievement = ActivityAchievement(title: "Daily Streak", description: "Login for 5 consecutive days", iconName: "streak_icon", points: 20, activityType: .consecutiveLogin, target: 5)
activityAchievement.recordLogin()
```

#### Leaderboard
To add users to a leaderboard and manage scores:
```swift
let leaderboard = Leaderboard()
leaderboard.addUser(username: "JohnDoe")
leaderboard.addPointsToUser(username: "JohnDoe", points: 50)
let topUsers = leaderboard.getTopUsers()
print(topUsers)
```

#### Progressive Achievement
To create an achievement that tracks progress:
```swift
let progressiveAchievement = ProgressiveAchievement(title: "Marathon Runner", description: "Run 100 km", iconName: "marathon_icon", points: 50, goal: 100, milestones: [10, 25, 50, 75])
progressiveAchievement.updateProgress(by: 15)
```

#### Timed Achievement
To create an achievement that must be completed within a specific time period:
```swift
let timedAchievement = TimedAchievement(title: "Weekly Warrior", description: "Complete 5 tasks in a week", iconName: "weekly_icon", points: 30, period: .weekly, target: 5)
timedAchievement.completeTask()
```

### Animations
To display achievement or level-up animations:
```swift
AnimationHelper.showAchievementAnimation(on: view, message: "Achievement Unlocked!")
AnimationHelper.showLevelUpAnimation(on: view, level: 2)
```

## License

LevelUpKit is available under the MIT License. See the [LICENSE](LICENSE) file for more info.

