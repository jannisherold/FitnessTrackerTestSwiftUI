//
//  WorkoutList.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 17.03.25.
//

import Foundation


struct WorkoutList{
    
    static let pushWorkout: Workout = {
        let workout = Workout(workoutName: "Push")
        
        let benchPress = Exercise("Bench Press", ExerciseNote("3 Sätze mit 12 Wiederholungen"))
        benchPress.sets.append(Set(Repetition(), Weight()))
        
        let shoulderPress = Exercise("Shoulder Press", ExerciseNote("4 Sätze mit 10 Wiederholungen"))
        shoulderPress.sets.append(Set(Repetition(), Weight()))
        
        workout.exercises = [benchPress, shoulderPress]
        
        return workout
    }()
    
    
    static let pullWorkout: Workout = {
        let workout = Workout(workoutName: "Pull")
        
        let pullUp = Exercise("Pull-Ups", ExerciseNote("Maximale Wiederholungen"))
        pullUp.sets.append(Set(Repetition(), Weight()))
        
        let barbellRow = Exercise("Barbell Row", ExerciseNote("3 Sätze mit 8 Wiederholungen"))
        barbellRow.sets.append(Set(Repetition(), Weight()))
        
        workout.exercises = [pullUp, barbellRow]
        
        return workout
    }()
    
    static let legWorkout: Workout = {
        let workout = Workout(workoutName: "Legs")
        
        let squats = Exercise("Squats", ExerciseNote("4 Sätze mit 10 Wiederholungen"))
        squats.sets.append(Set(Repetition(), Weight()))
        
        let legPress = Exercise("Leg Press", ExerciseNote("3 Sätze mit 12 Wiederholungen"))
        legPress.sets.append(Set(Repetition(), Weight()))
        
        workout.exercises = [squats, legPress]
        
        return workout
    }()
    
    
    static let pushPull = [pushWorkout, pullWorkout, legWorkout]
    
    /*
    static let pushPull = [
        
        
        Workout(workoutName: "Push"),
        
        Workout(workoutName: "Pull"),
        
        Workout(workoutName: "Legs")
        
    ]*/
    
    
    
    
    
    
    
    
    
}
