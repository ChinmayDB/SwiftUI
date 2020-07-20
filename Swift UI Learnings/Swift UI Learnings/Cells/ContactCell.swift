/******************************************************************************
 *
 * ContactCell
 *
 ******************************************************************************/

import SwiftUI

struct ContactCell: View {
    
    @State var showingAlertforChat: Bool = false
    @State var showingAlertforVideo: Bool = false
    let contactInfo: ContactInfo
    
    var body: some View {
        HStack(spacing: 30) {
            VStack(alignment: .leading) {
                Text(contactInfo.name)
                    .font(.headline)
                Text(contactInfo.email)
                    .font(.subheadline)
            }
            Spacer()
            Button(action: chatButtonTapped) {
                Image(systemName: "message.fill")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
            }.alert(isPresented: $showingAlertforChat) {
                Alert(title: Text("Too soon to Contact"), message: Text("One you make connection, you will be allowed to chat"), dismissButton: Alert.Button.default(Text("Got it !!"), action: {
                    self.showingAlertforChat = false
                }))
            }
            .buttonStyle(BorderlessButtonStyle())
            Button(action: videoCallButtonTapped) {
                Image(systemName: "video.fill")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red)
            }.alert(isPresented: $showingAlertforVideo) {
                Alert(title: Text("Too Soon to make Video Call"), message: Text("Once you start chatting then this wbould be allowed not at initial stage"), dismissButton: Alert.Button.default(Text("Got it !!"), action: {
                    self.showingAlertforVideo = false
                }))
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .padding(10)
    }
    
    func videoCallButtonTapped (){
        showingAlertforVideo = true
    }
    
    func chatButtonTapped() {
        showingAlertforChat = true
    }
    
    
    
}
