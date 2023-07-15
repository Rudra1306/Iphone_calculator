//
//  ContentView.swift
//  Iphone_calculator
//
//  Created by Rudra on 15/07/23.
//

import SwiftUI

enum CalcButtons: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case sub = "-"
    case divide = "/"
    case multipy = "x"
    case equal = "="
    case decimal = "."
    case remainder = "%"
    case negative = "+/-"
    case clear = "C"
}

struct ContentView: View {
    
    let buttons: [[CalcButtons]] = [
        
        [.clear, .negative, .remainder, .divide],
        [.seven, .eight, .nine, .multipy],
        [.four, .five, .six, .sub],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
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
                    
                ForEach(buttons, id: \.self) { rows in
                    
                    HStack (spacing: 12){
                        
                        ForEach(rows,  id: \.self) { item in
                            Button(action: {
                                
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(
                                        width: self.buttonWidth(item: item),
                                        height: self.buttonHeight(item: item)
                                    )
                                    .background(.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(self.buttonWidth(item: item)/2)
                            })
                        }
                    }
                    .padding(.bottom, 3)
                }
            }
        }
    }
    
    func buttonWidth(item: CalcButtons)  -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
    
    func buttonHeight(item: CalcButtons)  -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
