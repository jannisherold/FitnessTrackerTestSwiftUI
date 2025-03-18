//
//  WorkoutListMenuView.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 14.03.25.
//

import SwiftUI

struct WorkoutListMenuView: View {
    var workouts: [Workout] = WorkoutList.pushPull
    var body: some View {
        
        NavigationView{
               
            List(workouts, id: \.id){ workout in
                
                NavigationLink(destination: WorkoutDetailView(workout: workout), label: {
                    Text(workout.workoutName)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.vertical, 3)
                        .lineLimit(1)
                })
                  
            }
            .listStyle(.plain)
            .navigationTitle("Workouts")
            
            
            /*
             VStack{
             
             /*HStack{
              Title(titleName: "Workouts")
              .padding(.leading, 20)
              Spacer()
              }*/
             
             Spacer()
             
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
             }
             */
        }
    }
}









#Preview {
    WorkoutListMenuView()
}


struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [.white, .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        //damit ganzer Screen vom Verlauf benutzt wird
        .edgesIgnoringSafeArea(.all)
    }
}


struct Title: View {
    
    var titleName: String
    
    var body: some View{
        Text(titleName)
            .font(.system(size: 40, weight: .bold, design: .default))
            .foregroundColor(.black)
            .padding(.top)
    }
}

struct WorkoutTitle: View {
    
    var workoutTitleName: String
    
    var body: some View{
        Text(workoutTitleName)
            .font(.system(size: 30, weight: .bold, design: .default))
            .foregroundColor(.black)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
    }
}
