//
//  ContentView.swift
//  BMICalculator
//
//  Created by Afina R. Vinci on 27/03/23.
//

import SwiftUI

struct CalculateBMI: View {
    
    @State var weightStr: String = ""
    @State var heightStr: String = ""
    @State var bmi: Double = 0.0
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text("The BMI Calculator")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            VStack(spacing: 10) {
                Text("Your BMI Score")
                    .font(.title)
                    .fontWeight(.bold)
                Image("obesity")
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                Text("\(String(format: "%.2f", bmi))")
                    .font(.title)
                Text(checkStatus(bmi:bmi))
                    .font(.title)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color(.systemBlue))
            .cornerRadius(20)
        
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Weight:")
                        .font(.system(.title))
                        .frame(width: 100)
                    TextField("Weight", text: $weightStr)
                        .frame(width: 200)
                        .font(.system(.title))
                    Text("kg")
                        .font(.system(.title))
                }
                
                HStack {
                    Text("Height:")
                        .font(.system(.title))
                        .frame(width: 100)
                    TextField("Height", text: $heightStr)
                        .frame(width: 200)
                        .font(.system(.title))
                    Text("cm")
                        .font(.system(.title))
                }
                
            }
            .textFieldStyle(.roundedBorder)
            
            Button("Calculate") {
                // Button action here
                bmi = calculateBMI(weight: Int(weightStr) ?? 0, height: Int(heightStr) ?? 0)
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
        }
    }
    
    func calculateBMI(weight: Int, height: Int) -> Double {
        //BMI = (Weight in Kilograms / (Height in Meters x Height in Meters))
        let weightDouble = Double(weight)
        let heightDouble = Double(height)
//        return (weightDouble / (heightDouble/100 * heightDouble/100))
        return Double(weight) / (Double(height)/100 * Double(height)/100)
    }
    
//    func checkStatus(bmi: Double) -> String{
//        /*
//         BMI below 18.5 = Underweight
//         BMI 18.5 to 24.9 = Normal weight
//         BMI 25.0 to 29.9 = Overweight
//         BMI 30.0 and higher = Obese
//         BMI 40 and higher = Morbidly obese
//         */
//
//        if (bmi < 18.5){
//            return "Underweight"
//        } else if (bmi >= 18.5 && bmi < 25){
//            return "Normal weight"
//        } else if (bmi >= 25 && bmi < 30){
//            return "Overweight"
//        } else if (bmi >= 30 && bmi < 40){
//            return "Obese"
//        } else {
//            return "Morbidly obese"
//        }
//    }
    
    func checkStatus(bmi: Double) -> String {
        switch bmi {
        case ..<18.5:
            return "Underweight"
        case 18.5..<25:
            return "Normal weight"
        case 25..<30:
            return "Overweight"
        case 30..<40:
            return "Obese"
        default:
            return "Morbidly obese"
        }
    }
}



struct CalculateBMI_Previews: PreviewProvider {
    static var previews: some View {
        CalculateBMI()
    }
}
