//
//  ContentView.swift
//  Multiply
//
//  Created by Srishti Kamra  on 9/13/22.
//

import SwiftUI
struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack{
            Text("Multiply")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField("Enter a number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter a number", text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button ("Calculate") {
                if let firstNumber = Int(firstNumberTextField){
                    if let secondNumber = Int(secondNumberTextField){
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "KJ" }
                        else if calculation % 2 == 0{
                            imageName = "SD"}
                        else if calculation % 2 == 1
                        {imageName = "pinky"}
                    }
                }
            }
            Text("\(calculation)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Image(imageName)
                .resizable()
                .frame (width: 300, height: 300, alignment: .center)
                .aspectRatio(contentMode:.fit)
        }
        Spacer()
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
}
