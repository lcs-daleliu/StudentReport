//
//  ContentView.swift
//  StudentReport
//
//  Created by Yiren LIU on 2024-11-04.
//

import SwiftUI
import Charts

struct ContentView: View {
    let subjects = [ "English", "Functions", "Caculus", "Computer Science", "Chemistry", "Economy", "Physics" ]
    let steps = [ 77, 98, 95, 90, 97, 95, 96 ]
    
    var body: some View {
        Chart {
            ForEach(subjects.indices, id: \.self) { index in
                BarMark(x: .value("Grade", subjects[index]), y: .value("Steps", steps[index]))
                    .foregroundStyle(by: .value("Grade", subjects[index]))
                    .annotation {
                        Text("\(steps[index])")
                    }
            }
        }
        .padding(50)
    }
}

#Preview {
    ContentView()
}
