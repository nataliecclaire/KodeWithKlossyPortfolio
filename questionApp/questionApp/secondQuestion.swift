//
//  secondQuestion.swift
//  questionApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct secondQuestion: View {
    
    @State private var showingThirdQuestion = false
    
    var body: some View {
        ZStack{
            Color("arcticBlue").ignoresSafeArea()
            VStack{
                Image("littleSpider")
                    .renderingMode(.template)
                    .foregroundColor(Color("icyBlue"))
                
                Text("The kid is safe, but Green Goblin is attacking!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("icyBlue"))
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Button {
                    showingThirdQuestion = true
                    miguelCounter += 1
                    print(miguelCounter)
                }
                label: {
                    Text("Clap Goblin in his green FACE! 💪")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingThirdQuestion = true
                    milesCounter += 1
                    print(milesCounter)
                }
                label: {
                    Text("Get in the driver's seat again - I'm whippin this mf 🚍")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                
                
                Button {
                    showingThirdQuestion = true
                    peterBCounter += 1
                    print(peterBCounter)
                }
                label: {
                    Text("Make a quippy one-liner only you get 🕸️")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("icyBlue"))
                .foregroundColor(Color("arcticBlue"))
                .multilineTextAlignment(.center)
                
                .fullScreenCover(isPresented: $showingThirdQuestion) {
                    thirdQuestion()
                }
            }
        }
    }
}

struct secondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        secondQuestion()
    }
}
