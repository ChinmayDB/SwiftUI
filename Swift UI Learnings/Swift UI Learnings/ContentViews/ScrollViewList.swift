/******************************************************************************
 *
 * ScrollViewList
 *
 ******************************************************************************/

import SwiftUI

struct ScrollViewList: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (ListModel.dummyData(), id: \.self) { listModel in
                    CellRow(listModel: listModel)
                }
            }
            .navigationBarTitle(Text("List View"))
        }
        
    }
}

struct ScrollViewList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewList()
    }
}
