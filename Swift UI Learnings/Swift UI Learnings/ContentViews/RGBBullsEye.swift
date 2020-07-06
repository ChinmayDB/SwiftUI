/******************************************************************************
 *
 * BlockView
 *
 ******************************************************************************/

import SwiftUI

struct RGBBullsEye: View {
    // variables
    public static let rgbGuess: Double = 0.5
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    //@state is used to update UI whenever Value is changed
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    @State var showAlert = false
    
    func computeScore() ->Int {
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100.0 + 0.5)
    }
    
    var body: some View {
        VStack {
            Image("onePieceLogo")
                .resizable()
                .scaledToFit()
            HStack {
                // Target color block
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color")
                }
                // Guess color block
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    HStack {
                        Text("R: \(Int(rGuess * 255.0))")
                        Text("G: \(Int(gGuess * 255.0))")
                        Text("B: \(Int(bGuess * 255.0))")
                    }
                }
            }
            VStack {
                ColorSlider(value: $rGuess, textColor: .red)
                ColorSlider(value: $gGuess, textColor: .green)
                ColorSlider(value: $bGuess, textColor: .blue)
                Button(action: {
                    self.showAlert = true
                }) {
                    Text("Hit Me !!")
                }
            .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
                .alert(isPresented: $showAlert, content: { () -> Alert in
                    Alert(title: Text("Your Score is"), message: Text("\(computeScore())"))
                })
            }
        }
    }
}

struct RGBBullsEye_Previews: PreviewProvider {
    
    static var previews: some View {
        RGBBullsEye(rGuess: RGBBullsEye.rgbGuess, gGuess: RGBBullsEye.rgbGuess, bGuess: RGBBullsEye.rgbGuess)
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }
    }
}
