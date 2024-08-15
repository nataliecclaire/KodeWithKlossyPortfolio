//
//  ContentView.swift
//  questionApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("arcticBlue").ignoresSafeArea()
                VStack {
                    //Home page
                    Text("- Welcome to the Spider Society! -")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("icyBlue"))
                    
                    Image("spider")
//                        .renderingMode(.template)
//                        .foregroundColor(Color("icyBlue"))
                    
                    Text("It's time to find your mentor...fill out this quiz to !")
                        .font(.title3)
                        .foregroundColor(Color("icyBlue"))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal, 175.0)

                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink (destination: firstQuestion()) {
                            Text("Let's begin!")
                                .foregroundColor(Color("arcticBlue"))
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color("icyBlue"))
                        .padding()
                        .navigationTitle("")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(false)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
