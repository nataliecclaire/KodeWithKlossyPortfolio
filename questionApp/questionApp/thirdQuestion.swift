//
//  thirdQuestion.swift
//  questionApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct thirdQuestion: View {
    
    @State private var showingFourthView = false
    
    var body: some View {
        ZStack{
            Color("arcticBlue").ignoresSafeArea()
            VStack{
                Image("littleSpider")
                    .renderingMode(.template)
                    .foregroundColor(Color("icyBlue"))
                
                Text("Woah, you saved New York from Green Goblin, and it's time for a well-deserved snack:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("icyBlue"))
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Button {
                    showingFourthView = true
                    milesCounter += 1
                    print(milesCounter)
                }
                label: {
                    Text("Arroz con gandules baby 😋")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingFourthView = true
                    peterBCounter += 1
                    print(peterBCounter)
                }
                label: {
                    Text("Burger 🍔")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingFourthView = true
                    miguelCounter += 1
                    print(miguelCounter)
                }
                label: {
                    Text("Empanadas 🕸️")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                .fullScreenCover(isPresented: $showingFourthView) {
                    fourthView()
                }
            }
        }
    }
}

struct thirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        thirdQuestion()
    }
}
