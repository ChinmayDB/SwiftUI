/******************************************************************************
 *
 * ListView
 *
 ******************************************************************************/

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach (ListModel.dummyData(), id: \.self) { listModel in
                    CellRow(listModel: listModel)
                }
            }
            .navigationBarTitle(Text("List View"))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
