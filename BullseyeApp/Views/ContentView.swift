//
//  ContentView.swift
//  BullseyeApp
//
//  Created by kim jong moon on 12/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 89.0
    @State private var game = Game()
    
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(6.0)
                .font(.footnote)
                
            Text(String(game.target))
                .font(.largeTitle)
                .kerning(-1.0)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
//                print("pressed!")
                self.alertIsVisible = true
                
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(self.sliderValue.rounded())
                return Alert(title: Text("Score"), message: Text("Your Score: \(roundedValue)"), dismissButton: .default(Text("Done")))
            })
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: UIScreen.main.bounds.height, height: UIScreen.main.bounds.width))
    }
}
