//
//  fourthView.swift
//  questionApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct fourthView: View {
    var body: some View {
        ZStack {
            Color("arcticBlue").ignoresSafeArea()
            VStack {
                //Home page
                Text("Your new mentor is...")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("icyBlue"))
                
                Image("spider")
                        .renderingMode(.template)
                        .foregroundColor(Color("icyBlue"))
                
                if(miguelCounter >= 2) {
                    Text("Miguel O'Hara...yikes...")
                        .font(.title3)
                        .foregroundColor(Color("icyBlue"))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal, 175.0)
                }
                else if(milesCounter >= 2) {
                    Text("Miles Morales!! Let's gooo")
                        .font(.title3)
                        .foregroundColor(Color("icyBlue"))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal, 175.0)
                }
                else {
                    Text("Peter B. Parker! ...Nice!")
                        .font(.title3)
                        .foregroundColor(Color("icyBlue"))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal, 175.0)
                }
            }
        }
    }
}

struct fourthView_Previews: PreviewProvider {
    static var previews: some View {
        fourthView()
    }
}
