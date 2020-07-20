/******************************************************************************
*
* ScrollingContactList
*
******************************************************************************/

import SwiftUI

struct ScrollingContactList: View {
    
    @State private var sortingIndex = 0
    @State var contacts = ContactInfo.dummyData()
    
    var body: some View {
            VStack {
                Picker("Sort Contacts By", selection: $sortingIndex) {
                    Text("Name").tag(0)
                    Text("Email").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                    .onReceive([self.sortingIndex].publisher.first()) { (tag) in
                        switch tag {
                        case 0:
                            self.contacts.sort {$0.email > $1.email }
                        case 1:
                            self.contacts.sort {$0.name > $1.name }
                        default:
                            break;
                        }
                }
                .padding()
                ScrollView {
                    ForEach (contacts, id: \.self) { contactInfo in
                        NavigationLink(destination: ContactCell(contactInfo: contactInfo)){
                            ContactCell(contactInfo: contactInfo)
                        }
                    }
                }
            }
    }
}

struct ScrollingContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView()
    }
}
