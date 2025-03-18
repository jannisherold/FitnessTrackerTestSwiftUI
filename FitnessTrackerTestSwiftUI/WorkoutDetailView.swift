//
//  WorkoutDetailView.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 17.03.25.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout
    
    var body: some View {
        
        VStack{
            
            Text(workout.workoutName)
                .font(.system(size: 40, weight: .bold))
                .padding(.vertical, 3)
                .lineLimit(1)
            
            Text("Übung")
                .font(.system(size: 25, weight: .semibold))
                .padding(.vertical, 3)
                .lineLimit(1)
        }
        
        
        
    }
}

#Preview {
    WorkoutDetailView(workout: WorkoutList.pushPull.first!)
}
