/******************************************************************************
 *
 * ImageChallengeView
 *
 ******************************************************************************/

import SwiftUI

struct ImageChallengeView: View {
    var body: some View {
        ScrollView {
            VStack{
                HStack {
                    VStack{
                        FitImageView(value: "chopper")
                        HeaderView(value: "Chopper")
                    }
                    VStack {
                        FitImageView(value: "brook")
                        HeaderView(value: "Brook")
                    }
                }
            }
            VStack{
                FitImageView(value: "onePieceLogo")
                HStack {
                    VStack{
                        FitImageView(value: "zoro")
                        HeaderView(value: "ZORO")
                    }
                    VStack {
                        FitImageView(value: "franky")
                        HeaderView(value: "Franky")
                    }
                }
            }
        }
    }
}

struct ImageChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengeView()
    }
}

struct HeaderView : View {
    var value: String
    var body: some View {
        Text(value)
        .foregroundColor(.white)
        .background(Color.red)
    }
}

struct FitImageView: View {
    var value: String
    var body: some View {
        Image(value)
        .resizable()
        .scaledToFit()
    }
}
