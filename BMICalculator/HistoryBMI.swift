//
//  HistoryView.swift
//  BMICalculator
//
//  Created by Muhammad Irfan on 05/04/23.
//

import SwiftUI

struct HistoryBMI: View {

    var body: some View {
        NavigationStack{
            List {
                NavigationLink(value: "Normal"){
                    BMIResultItem(date: "2021-01-01", score: 22.1, status: "Normal weight")
                }
                
                NavigationLink(value: "Over"){
                    BMIResultItem(date: "2021-01-15", score: 25.8, status: "Overweight")
                }
                
                NavigationLink(value: "Obese"){
                    BMIResultItem(date: "2021-02-15", score: 30.2, status: "Obese")
                }
                
                
            }
            .navigationTitle("History BMI")
            .navigationDestination(for: String.self){
                BmiStatus in
                DetailBMIView(status: BmiStatus)
            }
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryBMI()
    }
}

struct BMIResultItem: View {
    @State var date: String
    @State var score: Double
    @State var status: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(date)
            HStack {
                Text("Score: \(String(format: "%.2f", score))")
                Spacer()
                Text("Status: \(status)")
                Spacer()
            }
        }.font(.body)
    }
}
