/******************************************************************************
 *
 * ContactsListView
 *
 ******************************************************************************/

import SwiftUI

struct ContactsListView: View {
    
    @State private var sortingIndex = 0
    @State var contacts = ContactInfo.dummyData()
    
    var body: some View {
        NavigationView {
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
                List {
                    ForEach (contacts, id: \.self) { contactInfo in
                        NavigationLink(destination: ScrollingContactList()){
                            ContactCell(contactInfo: contactInfo)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contacts"))
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView()
    }
}
