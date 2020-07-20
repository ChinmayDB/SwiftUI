/******************************************************************************
*
* ListModel
*
******************************************************************************/

import SwiftUI

struct ContactInfo: Identifiable, Hashable {
    
    let id = UUID()
    let name: String
    let email: String
    let number: String
    
    static func dummyData() -> [ContactInfo] {
        return [
            ContactInfo(name: "Chinmay", email: "abc@gmail.com", number: "12345678909"),
            ContactInfo(name: "Kunal", email: "bcd@gmail.com", number: "12345677909"),
            ContactInfo(name: "shubham", email: "cde@gmail.com", number: "12344678909"),
            ContactInfo(name: "karan", email: "deg@gmail.com", number: "13345678909"),
            ContactInfo(name: "suraj", email: "efg@gmail.com", number: "12346678909"),
            ContactInfo(name: "pratik", email: "fgh@gmail.com", number: "12545678909"),
            ContactInfo(name: "ravish", email: "ghi@gmail.com", number: "12345678909"),
            ContactInfo(name: "jinesh", email: "hij@gmail.com", number: "22345678909"),
            ContactInfo(name: "kp", email: "ijk@gmail.com", number: "12345688909"),
            ContactInfo(name: "nitin", email: "jkl@gmail.com", number: "12345678999")
        ]
    }
    
    
}
