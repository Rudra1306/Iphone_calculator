//
//  ContentView.swift
//  Iphone_calculator
//
//  Created by Rudra on 15/07/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    // Make Text Display
                    Text("0")
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
                
                
                //  Make Buttons
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
