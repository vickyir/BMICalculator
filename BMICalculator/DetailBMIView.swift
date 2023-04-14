//
//  DetailView.swift
//  BMICalculator
//
//  Created by Muhammad Irfan on 05/04/23.
//

import SwiftUI

struct DetailBMIView: View {
//    @State var score: Double
    @State var status: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image("bmi_obese")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            
            Text("0.0")
                .font(.title)
            
            Text(status)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBMIView(status: "Obese")
    }
}
