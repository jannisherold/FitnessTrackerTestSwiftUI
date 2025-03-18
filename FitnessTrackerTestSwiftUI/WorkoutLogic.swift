//
//  WorkoutLogic.swift
//  FitnessTrackerTestSwiftUI
//
//  Created by Jannis Herold on 17.03.25.
//

import Foundation

import UIKit


class Repetition{
    var counter: Int
    
    //Standartwert/ Anfangswert einer Wiederholung ist 12
    init() {
        self.counter = 12
    }
    
    //Konstruktor
    //_ vor Parameter spart bei Methodenaufruf die Angabe des Datentyps
    /*init(_ count: Int) {
        self.count = count
    }*/
    
}


class Weight{
    var kiloWeight: Double

    //Standartwert/ Anfangswert einer Wiederholung ist 10KG
    init() {
        self.kiloWeight = 10
    }
    
    /*
    //Konstruktor
    init(_ kiloWeight: Double) {
        self.kiloWeight = kiloWeight
    }*/
}


class Set{
    var repetition: Repetition
    var weight: Weight
    
    //Konstruktor
    init(_ repetition: Repetition, _ weight: Weight) {
        self.repetition = repetition
        self.weight = weight
    }
    
}


class ExerciseNote{
    var note: String
    
    //Konstruktor
    init(_ note: String) {
        self.note = note
    }
}


class Exercise{
    var exerciseName: String
    var exerciseNote: ExerciseNote
    var sets: [Set]
    
    init(_ exerciseName: String, _ exerciseNote: ExerciseNote) {
        self.exerciseName = exerciseName
        self.exerciseNote = exerciseNote
        self.sets = []
    }
    
}


class Workout: Identifiable{
    
    let id = UUID()
    var workoutName: String
    var exercises: [Exercise] = []
    
    //Konstruktor ohne exercises, da diese bereits leer initialisiert wurden (hoffe ich)
    init(workoutName: String) {
        self.workoutName = workoutName
    }
}



