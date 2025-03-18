//
//  WorkoutListMenuView.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 14.03.25.
//

import SwiftUI

struct WorkoutListMenuView: View {
    
    //Workout Liste, die Dummy-Werte der WorkoutList Klasse übergeben bekommen
    var workouts: [Workout] = WorkoutList.pushPull
    
    var body: some View {
        
        NavigationView{
               
            List(workouts, id: \.id){ workout in
                
                NavigationLink(destination: WorkoutDetailView(workout: workout), label: {
                    
                    //Text ist jeweils der String, der in der Workouts Listen-Zeile ausgespielt wird
                    Text(workout.workoutName)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.vertical, 3)
                        .lineLimit(1)
                })
                  
            }
            .listStyle(.plain)
            .navigationTitle("Workouts")
            
            
            /*
             
             Button{
             print ("workout hinzufügen tapped")
             } label: {
             Text("Workout hinzufügen")
             .frame(width: 280, height: 50)
             .background(.blue)
             .foregroundColor(.white)
             .font(.system(size: 20, weight: .bold, design: .default))
             .cornerRadius(10)
             }
             
             */
        }
    }
}


#Preview {
    WorkoutListMenuView()
}
