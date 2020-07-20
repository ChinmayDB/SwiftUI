/******************************************************************************
 *
 * ListModel
 *
 ******************************************************************************/

import SwiftUI

struct ListModel: Identifiable, Hashable {
    
    let id: Int
    let title: String
    let subTitle: String
    let imageName: String
    
    static func dummyData() -> [ListModel] {
        return [ListModel(id: 1, title: "Zoro", subTitle: "Left Hand of Luffy", imageName: "zoro"),
                ListModel(id: 1, title: "Zoro", subTitle: "Left Hand of Luffy", imageName: "zoro"),
                ListModel(id: 1, title: "Zoro", subTitle: "Left Hand of Luffy", imageName: "zoro")
        ]
    }
}
