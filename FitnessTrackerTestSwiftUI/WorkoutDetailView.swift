//
//  WorkoutDetailView.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 17.03.25.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout
    //var currentWorkoutExercises: [Exercise]
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text(workout.workoutName)
                    .font(.system(size: 45, weight: .bold))
                    .padding(.leading, 20)
                    .lineLimit(1)
                    
                Spacer()
            }
            
        
            HStack{
                
                Text(workout.exercises.first!.exerciseName)
                    .font(.system(size: 25, weight: .semibold))
                    .padding(.leading, 20)
                    .lineLimit(1)
                
                Spacer()
                
            }
            
            
            Spacer()
            
        }
        
    }
}

#Preview {
    WorkoutDetailView(workout: WorkoutList.pushPull.first!)
}
