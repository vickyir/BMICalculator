//
//  BMIResult.swift
//  BMICalculator
//
//  Created by Rizal Hilman on 09/04/23.
//

import Foundation

struct BMIResult: Identifiable, Hashable {
    var id = UUID()
    var score: Double
    var status: String
    var imageName: String
}

let sampleBMIResults: [BMIResult] = [
    BMIResult(score: 23.4, status: "Normal", imageName: "bmi_normal"),
    BMIResult(score: 29.1, status: "Overweight", imageName: "bmi_overweight"),
    BMIResult(score: 18.7, status: "Underweight", imageName: "bmi_underweight"),
    BMIResult(score: 32.6, status: "Obese", imageName: "bmi_obese"),
    BMIResult(score: 21.8, status: "Normal", imageName: "bmi_normal"),
    BMIResult(score: 25.9, status: "Overweight", imageName: "bmi_overweight"),
    BMIResult(score: 17.5, status: "Underweight", imageName: "bmi_underweight"),
    BMIResult(score: 36.2, status: "Obese", imageName: "bmi_obese"),
    BMIResult(score: 22.6, status: "Normal", imageName: "bmi_normal"),
    BMIResult(score: 26.8, status: "Overweight", imageName: "bmi_overweight")
]

