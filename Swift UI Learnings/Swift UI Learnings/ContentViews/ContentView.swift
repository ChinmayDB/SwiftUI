/******************************************************************************
 *
 * ContentView
 *
 ******************************************************************************/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            HStack {
                Text("Everyone is Awesome")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                Text("So i am")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
            }
            Text("So is the Nature")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
            // By Default the alignment is Center
            // Super VStack paramaters are not applied to sub VStacks
            VStack {
                Text("So is every other person")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                Text("So is every thing")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                Text("and so is the Life")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
            }
        })
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
