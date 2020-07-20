/******************************************************************************
 *
 * CellRow
 *
 ******************************************************************************/

import SwiftUI

struct CellRow: View {
    
    let listModel: ListModel
    
    var body: some View {
        HStack(spacing: 30) {
            Image(listModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text(listModel.title)
                    .font(.headline)
                Text(listModel.subTitle)
                    .font(.subheadline)
            }
            Spacer()
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
        }
        .padding(10)
    }
    
    private func buttonAction() {
        // Todo: Week 4
    }
}
