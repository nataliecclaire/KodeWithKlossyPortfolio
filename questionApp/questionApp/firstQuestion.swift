//
//  firstQuestion.swift
//  questionApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct firstQuestion: View {
    
    @State private var showingSecondQuestion = false
    
    var body: some View {
        ZStack{
            Color("arcticBlue").ignoresSafeArea()
            VStack{
                Image("littleSpider")
                    .renderingMode(.template)
                    .foregroundColor(Color("icyBlue"))
                
                Text("A bus is about to hit a kid! You...")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("icyBlue"))
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Button {
                    showingSecondQuestion = true
                    miguelCounter += 1
                    print(miguelCounter)
                }
                label: {
                    Text("Stop the bus with brute strength 💪")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingSecondQuestion = true
                    milesCounter += 1
                    print(milesCounter)
                }
                label: {
                    Text("Get being the wheel - we whipping! 🚍")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingSecondQuestion = true
                    peterBCounter += 1
                    print(peterBCounter)
                }
                label: {
                    Text("Yank the kid out of the way! 🕸️")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                .fullScreenCover(isPresented: $showingSecondQuestion) {
                    secondQuestion()
                }
            }
        }
    }
}

struct firstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        firstQuestion()
    }
}
